void main() {
  final n = 0;
  int fatorial = 1;

  for (int i = 1; i <= n; i++) {
    fatorial *= i;
  }
  print('$n! = $fatorial');
}