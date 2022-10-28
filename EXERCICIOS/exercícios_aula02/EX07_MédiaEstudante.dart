void main (){
  List <dynamic> notas = [7,6.3,8,5.5];

  final media = notas.reduce((value, element) => value+element);

  final calculo = media/notas.length;

  if(calculo>=6){
    
    print('Média: $calculo\nAprovado!');
  }else if(calculo<6){
    print('Média: $calculo\nReprovado');
  }

}