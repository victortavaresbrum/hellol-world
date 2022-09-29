void main() {
  final list = [1, 2, 4];

  //*forEach  - É utilizado para executar uma função para cada elemento de uma lista;
  list.forEach((element) {
    print(element);
  });
  for (var element in list) {
    print(element);
  }

  //* contains - Verifica se um determinado elemento pertence a lista e retorna um booleano para ver se está lá on não;
  final contains = list.contains(2);
  print(contains);

  //* map - é utilizado para salvar o valor em outra variável;

  final list2 = list.map((element) => element * 10).toList();
  print(list2);

  //*where - é utilizado para fazer um filtro em uma lista;
  final list3 = list.where((element) => element % 2 == 0).toList();
  print(list3);
}
