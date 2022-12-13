import 'dart:io';


Future<String> readName(){
  print('\nDigite seu nome: ');
  final name = stdin.readLineSync();
  return Future.value(name);

}

void showData(String data){
  print('Dados encontrados');
  print(data);
}

void main(){
  try{
  readName().then((value) => print('\nSeu nome é $value\n'));
  }catch(error){
    print('Entrada inválida!');
  }

}