import 'dart:io';

Stream<String> lerNomes () async* {
  for(int i = 0; i <5; i++){
    final entrada = stdin.readLineSync();
      if(entrada != null){
        yield entrada;
      }
  }
}

void main(){
  final nomes = [];
  lerNomes().listen((nome){
    nomes.add(nome);
    print('Nome adicionado');
  }, onDone: (){
     print(nomes);
  });
}