void main (){
  final List <dynamic> notas = [7,6.3,8];

  final sum =notas.reduce((va, v) => va+v);

  double calculo = sum/notas.length;

  print('Média: ${calculo.toStringAsFixed(1)}');


}