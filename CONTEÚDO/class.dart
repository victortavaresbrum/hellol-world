//* Sintaxe de uma Classe
class Car {
  //* Membros: variáveis -> fields/campos (propriedades)
  // final name = 'Uno'; // hard-coded
  final String name;

  //* Construtor: Classe -> construtor -> Objeto
  Car(this.name);

  //* Membros: funções -> métodos (comportamentos)
  void turnOn() {
    print('O carro $name está ligado');
  }
}

void main() {
  //* Instanciar um Objeto
  final myCar = Car('Uno');
  // final yourCar = Car('Doblo');

  //* Acessar membros
  // print(myCar.name); 
  // print(yourCar.name);

  // myCar.turnOn();
  // yourCar.turnOn();

  //* Checar qual a classe/tipo de um objeto
  // print(myCar.runtimeType);
  // print(myCar is Car);

  //? "Tudo é um objeto"
  print(myCar is Object);
  final myObject = Object();
  myObject.runtimeType;
}