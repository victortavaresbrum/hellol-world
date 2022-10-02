void main() {
  final ganhosPessoa = 2000;
  final scoreSerasa = 300;
  final mesesAPagar = 10;

  double valorEmprestimo = 5000;
  double juros;
  final resultado;

  if (scoreSerasa <= 300) {
    juros = 0.03;
  } else if (scoreSerasa > 300 && scoreSerasa < 700) {
    juros = 0.09;
  } else {
    juros = 0.15;
  }
  resultado = (valorEmprestimo + (valorEmprestimo * juros)) / mesesAPagar;

  print('$juros ');

  print('$resultado');
}
