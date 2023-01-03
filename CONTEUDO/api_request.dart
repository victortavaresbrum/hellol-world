import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

final url =
    "https://api.nasa.gov/planetary/apod?api_key=ZFuuJ2WUByRGqZ6QuQYkTa94ec05izZfpkjuwr7c";

void vanillaRequest() async {
  final httpClient = HttpClient();
  final request = await httpClient.getUrl(Uri.parse(url));
  final response = await request.close();
  response.transform(Utf8Decoder()).listen((data)=> print(data));
}


void dioRequest () async {
  
  final dio = Dio();
  // await dio.get(url);
  final data = await dio.get(url);
  final explanation = data.data["explanation"];



  print(explanation);



}