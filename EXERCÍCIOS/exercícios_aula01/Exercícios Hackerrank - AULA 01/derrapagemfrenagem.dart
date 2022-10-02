import 'dart:io';
import 'dart:math';

void main() {
  final velocidade = 20;
  final aceleracao = -2;

  // Escreva seu programa a partir daqui

  final distancia = -1 * (pow(velocidade, 2) / (2 * aceleracao));
  print(distancia);
}
