void main() {
  final a = 7;
  final b = 4;
  final c = 10;

  if ((a < b + c) && (b < a + c) && (c < a + b)) {
    print('Isto é um triângulo!');
  } else {
    print('Isto não é um triângulo!');
  }
}
