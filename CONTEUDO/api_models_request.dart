import 'package:dio/dio.dart';

import 'apod.dart';


void main() async {

  final apodRepository = ApodRepository();
  final apod = await apodRepository.getFromToday();
  final apods = await apodRepository.getFromWeek();
  print(apod);
  print(apods);
}


class ApodRepository {
  static const url =
      "https://api.nasa.gov/planetary/apod?api_key=ZFuuJ2WUByRGqZ6QuQYkTa94ec05izZfpkjuwr7c";

  final _dio = Dio();

  Future<Apod> getFromToday() async {
    final response = await _dio.get(url, queryParameters: {
      'api_key': 'DEMO_KEY',
    });

    return Apod.fromMap(response.data);
  }

  Future<List<Apod>> getFromWeek() async {
    final startDate = DateTime.now();
    final endDate = startDate.subtract(Duration(days: 7));
    final response = await _dio.get(
      url, 
      queryParameters: {
        'api_key': 'DEMO_KEY',
        'start_date': '${startDate.year}-${startDate.month}-${startDate.day}',
        'end_date': '${endDate.year}-${endDate.month}-${endDate.day}'
    });
    return (response.data as Iterable)
        .map((data) => Apod.fromMap(data))
        .toList();
  }
}


class Apod {
  final String photoUrl;
  final String explanation;

  Apod({required this.photoUrl, required this.explanation});

  @override
  String toString() => 'Apod(explanation: $explanation, url: $photoUrl';

  factory Apod.fromMap(Map<String, dynamic> data) {
    return Apod(
      explanation: data['explanation'],
      photoUrl: data['url'],
    );
  }
}
