void main() {
  double height = 1.65;
  final sexo = 'f';
  
   final definicaoSexo = sexo== 'm' ? 'm' : 'f'; 
   if (definicaoSexo=='m'){
      final calculationMen = (72.7*height)-58;
      print('${height}, ${sexo.toUpperCase()}\nPeso ideal: ${calculationMen}kg');
   }
   if (definicaoSexo=='f'){
      final calculationWomen = (62.1*height)-44.7;
      print('${height}, ${sexo.toUpperCase()}\nPeso ideal: ${calculationWomen.toStringAsFixed(3)} Kg');
   }
   

}