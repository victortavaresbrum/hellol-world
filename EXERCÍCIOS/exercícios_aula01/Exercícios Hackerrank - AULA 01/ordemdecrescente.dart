void main() {
  // Variaveis iniciais
  final num1 = 5;
  final num2 = 3;
  final num3 = 9;

  if ((num1 > num2 && num1 > num3) && (num2 > num3)) {
    print('$num1 $num2 $num3');
  } else if ((num2 > num1 && num2 > num3) && (num1 > num3)) {
    print('$num2 $num1 $num3');
  } else if ((num3 > num1 && num3 > num2) && num1 > num2) {
    print('$num3 $num1 $num2');
  } else if (num1 == num2 || num2 == num3 || num1 == num3) {
    print('Entre apenas com números diferentes.');
  }
}
