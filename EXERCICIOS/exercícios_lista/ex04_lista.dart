void main() {
  final n = 3;

  int sum = 0;

  final list = List<dynamic>.empty(growable: true);

  for (int i = 0; list.length <= n; i++) {
    String lines = '';
    for (int j = 0; j <= i; j++) {
      sum++;
      var separator = lines.isEmpty ? '' : '';
      lines += '$sum';
      list.add(lines + separator);
    }
    print(list);
  }
}
