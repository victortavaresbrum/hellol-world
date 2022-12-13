void main() {
  bool? condition;

  var numeroLoop = 1;

  while (numeroLoop <= 5) {
    print('Olá');
    numeroLoop++;
  }
  print('Acabou');

  List list = ['Banana', 'Tomate', 'ALface', 'Beterraba'];

  for (int i = 0; list.length > i; i++) {
    print(i);
    print(list[i]);
  }
}
