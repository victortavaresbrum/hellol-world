import 'dart:math';

void main() {
  final peso = 94;
  final altura = 1.90;
  final imc = peso / (pow(altura, 2));

  if (imc < 18.5) {
    print('Abaixo do peso');
  } else if (18.5 <= imc && imc < 25) {
    print('Peso Normal ou Saudável');
  } else if (25 <= imc && imc < 30) {
    print('Acima do peso');
  } else {
    print('Obesidade');
  }
}
