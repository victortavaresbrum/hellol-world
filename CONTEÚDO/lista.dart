void main() {
  List<dynamic> minhaLista = ['banana', 'alface', 'tomate'];

//list.lenght
  var tamanho = minhaLista.length;
  print(tamanho);

  //list.add
  minhaLista.add(5);

  print(minhaLista);

  // list.insert
  minhaLista.insert(0, 9);
  print(minhaLista);
  //list.addAll
  minhaLista.addAll([-1, -2, 4]);
  print(minhaLista);
  //insertmanual
  minhaLista[4] = 524;
  print(minhaLista);

  minhaLista.insert(2, true);
  print(minhaLista);

  final listA = List<dynamic>.empty(growable: true); //1.1
  print(listA);

  final listB = List<dynamic>.filled(4, 2.2); //1.2
  print(listB);

  final listC = listB; //1.3
  print(listC);

  final listD = [...listC, 2, 3]; //1.4
  print(listD);

  final listE = List<dynamic>.from(listA + listC); //2
  print(listE);

  final listF = []; //3
  print(listF);

  if (listE.length == 4) {
    listF.insert(0, 2.2);
    listF.addAll([5, 10]);
  }
  print(listF); //4

  if (listE == listB) {
    print('True');
  } else {
    print('False');
  }
  listD.removeRange(0, 6); //5
  print(listD);

  print(listF.first);
  print(listC.last);

  if (listF.first == listC.last) {
    //6
    print('True');
  } else {
    print('False');
  }

  final listG = List.from(listF);
  print(listG);
  listF.add(5);
  print(listF);
}
