class Calculadora {
  final valor1;
  final valor2;
  final operacao;

  Calculadora(this.valor1, this.valor2, this.operacao);

  void calcular() {
    switch (operacao) {
      case '+':
        {
          print('${valor1 + valor2}');
        }
        break;
      case '-':
        {
          print('${valor1 - valor2}');
        }
        break;
      case '/':
        {
          print('${valor1 / valor2}');
        }
        break;
      case '*':
        {
          print('${valor1 * valor2}');
        }
        break;
      default:
        {
          print('Valor não suportado');
        }
    }
  }
}
