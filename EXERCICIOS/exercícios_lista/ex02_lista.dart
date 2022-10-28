void main() {
  final initialworkList = List<int>.unmodifiable([2, 3]);

  final workList = List.from(initialworkList);

  if (workList.length > 5) {
    if (workList.first == 0 && workList.last == 10) {
      workList.removeRange(1, workList.length - 5);
    } else if (workList[3] == 3) {
      workList.first = 1;
      workList.last = 9;
      final end = workList.length - 1;
      final start = end - (workList.length - 5);
      workList.removeRange(start, end);
    } else {
      workList.removeLast();
      if (workList.length > 5) {
        workList.removeAt(0);
      }
      if (workList.length > 5) {
        workList.removeRange(0, workList.length - 5);
      }
    }
  } else {
    final tempList = List.filled(5 - workList.length, 2);
    workList.addAll(tempList);
    workList[1] = 8;
  }

  final sum = workList[1] + workList[3];
  final division = workList.last / workList[2];
  final multiplication = sum * division;
  print(multiplication > 15 ? 'Lista Válida' : 'Lista inválida');
}
