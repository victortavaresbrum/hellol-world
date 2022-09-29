void main() {
  final n = 6;
  int sum = 0;

  for (int i = 1; i <= n; i++) {
    String line = '';
    for (int j = 1; j <= i; j++) {
      sum++;
      line += '$sum ';
    }
    print(line);
  }
}
