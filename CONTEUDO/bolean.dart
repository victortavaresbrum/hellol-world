void main() {
  final boolean = true;

  String? nulo;
  //final result = nulo ??'Qualquer'; //Estou padronizando que o valor quando nulo será QUALQUER
  nulo = 'A';
  final result = nulo == null ? 'Qualquer' : nulo;
  print(result);
}
