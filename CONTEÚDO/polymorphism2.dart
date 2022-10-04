import 'polymorphism.dart';

class Galinha extends Animal {
  @override
  String gender;

  Galinha(int numLegs, this.gender, super.legs, super.mouth);

  @override
  bool get canMove => false;

  @override
  void makeSound() => print('Cococoricó');

  @override
  void eat() {
    print('A galinha começou a comer');
    ;
    super.eat(); //Oocial
  }
}
