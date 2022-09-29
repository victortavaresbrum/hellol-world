void main() {
  int n = 6;
  int sum = 0;
  String lines = '';
  final list = List<String>.empty(growable: true);

  for (int i = 1; i <= n; i++) {
    lines = '';

    for (int j = 1; j <= i; j++) {
      sum++;
      lines += '$sum ';
    }
    list.add(lines);
  }
  list.reversed.forEach((print));
}
