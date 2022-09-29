import 'dart:io';

void main() {
  // Variaveis iniciais
  final valorEmprestimo = 5000;
  final serasaScore = 80;
  final meses = 10;
  double juros;

  // Escreva seu programa a partir daqui

  if (serasaScore <= 300) {
    juros = 0.03;
  } else if (serasaScore > 300 && serasaScore < 700) {
    juros = 0.09;
  } else {
    juros = 0.15;
  }
  var parcela = (valorEmprestimo + (valorEmprestimo * juros)) / (meses);
  print(parcela);
}
