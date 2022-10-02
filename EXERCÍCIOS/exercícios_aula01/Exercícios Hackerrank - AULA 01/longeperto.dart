import 'dart:io';
import 'dart:math';
//--enable-experiment=non-nullable

void main() {
  final x1 = 1;
  final y1 = 1;
  final x2 = 2;
  final y2 = 3;

  var distancia;
  var classificacao;

  distancia = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));

  if (distancia > 4) {
    classificacao = 'Longe';
  }

  if (distancia <= 4) {
    classificacao = 'Perto';
  }

  print(classificacao);
}
