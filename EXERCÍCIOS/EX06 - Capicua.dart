void main() {
  int num = 10501;

  final digit1 = num ~/ 10000;
  num %= 10000;

  final digit2 = num ~/ 1000;
  num %= 1000;

  final digit3 = num ~/ 100;
  num %= 100;

  final digit4 = num ~/ 10;
  final digit5 = num % 10;

  print('$digit1$digit2$digit3$digit4$digit5');

  final firstPart = digit1 == digit5;
  final secondPart = digit2 == digit4;

  if (firstPart == secondPart) {
    print('This is a Capicua');
  } else {
    print('This is not a Capicua');
  }
}
