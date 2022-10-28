import 'dart:io';

void main() {
  // Variaveis iniciais

  final double number1 = 2.2;
  final operator = '/';
  final double number2 = 4.6;

  // Escreva seu programa a partir daqui
  switch (operator) {
    case '-':
      {
        var result = number1 - number2;
        if (result % 1 == 0) {
          print(result ~/ 1);
        } else if (result % double.parse(result.toStringAsFixed(5)) > 0) {
          print(result.toStringAsFixed(1));
        } else {
          print(result);
        }
      }
      break;
    case '/':
      {
        var result = number1 / number2;
        if (result % 1 == 0) {
          print(result ~/ 1);
        } else if (result % double.parse(result.toStringAsFixed(5)) > 0) {
          print(result.toStringAsFixed(5));
        } else {
          print(result);
        }
      }
      break;
    case '*':
      {
        var result = number1 * number2;
        if (result % 1 == 0) {
          print(result ~/ 1);
        } else if (result % double.parse(result.toStringAsFixed(5)) > 0) {
          print(result.toStringAsFixed(5));
        } else {
          print(result);
        }
      }
      break;
    default:
      {
        var result = number1 + number2;
        if (result % 1 == 0) {
          print(result ~/ 1);
        } else if (result % double.parse(result.toStringAsFixed(5)) > 0) {
          print(result.toStringAsFixed(5));
        } else {
          print(result);
        }
      }
  }
}
/*if (result is double) {
          print(true);
        } else {
          print(false);
        }*/