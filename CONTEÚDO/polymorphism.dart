abstract class Animal {
  final legs;
  final bool mouth;

  Animal(this.legs, this.mouth);

  abstract final String gender;

  final bool canMove = true;

  void makeSound();

  void eat() => print('Todo animal pode comer!');
}

void main() {}
