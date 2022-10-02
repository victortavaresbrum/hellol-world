import 'dart:math';

void main() {
  double aceleracao = -2;
  double velocidade = 20;

  double distancia = (-1) * (pow(velocidade, 2)) / (2 * aceleracao);

  print('A distância de frenagem é $distancia');
}
