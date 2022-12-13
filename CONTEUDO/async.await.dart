
void printMessage() async{

  await Future.delayed(Duration(seconds: 2));
  print('Mensagem');

}


void main(){

  printMessage();

}