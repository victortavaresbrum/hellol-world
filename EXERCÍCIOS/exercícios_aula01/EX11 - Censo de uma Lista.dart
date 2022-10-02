void main() {
  List<int> list = [3, 5, 10, 2, 5, 1, 2, 3, 6, 12, 15, 22, 8, 4, 13, 25];
  int maiorNumero = 0;
  int menorNumero = 1;
  int contPar = 0;
  int contImpar = 0;
  double media = 0;
  int total = 0;
  for (int i = 0; list.length > i; i++) {
    total = list[i] + total;
    media = total / list.length;

    if (list[i] > maiorNumero) maiorNumero = list[i];
    if (list[i] < menorNumero) menorNumero = list[i];

    if (list[i] % 2 == 0) {
      contPar++;
    }
    if (list[i] % 2 == 1) {
      contImpar++;
    }
  }
  print('A média dos valores é: $media');
  print(maiorNumero);
  print(menorNumero);
  print('Pares: $contPar');
  print('Impares: $contImpar');
}
