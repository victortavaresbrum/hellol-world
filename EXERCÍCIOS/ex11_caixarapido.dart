void main() {
  // Escreva seu programa a partir daqui
  String mensagemFinal = '';
  int value = 101;
  int cedula5 = 0;
  int cedula2 = 0;

  if (value % 5 == 1 || value % 5 == 3) {
    value = value - 5;
    cedula5 = 1;
  }
  if (value > 100) {
    int cedula100 = value ~/ 100;
    mensagemFinal += '$cedula100 de 100';
    value = value % 100;
  }
  if (value >= 50) {
    int cedula50 = value ~/ 50;
    mensagemFinal +=
        mensagemFinal.isEmpty ? '$cedula50 de 50' : ', $cedula50 de 50';
    value = value % 50;
  }
  if (value <= 20 && value > 10) {
    int cedula20 = value ~/ 20;
    mensagemFinal +=
        mensagemFinal.isEmpty ? '$cedula20 de 20' : ', $cedula20 de 20';
    value = value % 20;
  }
  if (value >= 10 && value > 5) {
    int cedula10 = value ~/ 10;
    mensagemFinal +=
        mensagemFinal.isEmpty ? '$cedula10 de 10' : ', $cedula10 de 10';
    value = value % 10;
  }
  if (value ~/ 5 > 0) {
    cedula5 += 1;
    value = value % 5;
  }
  if (value % 2 != 0) {
    cedula5--;
    value += 5;
  }

  if (cedula5 > 0) {
    mensagemFinal +=
        mensagemFinal.isEmpty ? '$cedula5 de 5' : ', $cedula5 de 5';
  }
  if (value >= 2) {
    cedula2 = value ~/ 2;
    value %= 2;
  }

  if (cedula2 > 0) {
    mensagemFinal +=
        mensagemFinal.isEmpty ? '$cedula2 de 2' : ', $cedula2 de 2';
  }
  print(mensagemFinal);
}
