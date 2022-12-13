void main() {
  //* Invocações
  // studentAverage('Romão', 28, [8, 5, 7, 9]);
  // studentAverage(null, 28, [8, 5, 7, 9]);

  // studentAverage(name: 'Romão', grades: [8, 5, 7, 9], age: 28);
  // studentAverage(age: 28, grades: [8, 5, 7, 9]);

  // studentAverage('Romão', 28, [8, 5, 7, 9]);
  // studentAverage(28, [8, 5, 7, 9], 'Romão');

  //? Variável como parâmetro
  final myAge = 28;
  final grades = [8, 5, 7, 9];
  studentAverage('Romão', myAge, grades);
  print(myAge);
  print(grades);
}

//* Função com parâmetros Obrigatórios
// void studentAverage(String name, int age, List<int> grades) {
// void studentAverage(String? name, int age, List<int> grades) {
//   final avg = grades.reduce((v, e) => v + e) / grades.length;
//   print('O aluno $name de $age anos teve média $avg');
// }

void studentAverage(String name, int age, List<int> grades) {
  // age = 29;
  grades.add(10);
  final avg = grades.reduce((v, e) => v + e) / grades.length;
  print('O aluno $name de $age anos teve média $avg');
}

//* Função com parâmetros Nomeados - required, null x valor padrão
// void studentAverage({
//   String name = 'não identificado',
//   required int age,
//   required List<int> grades,
// }) {
//   final avg = grades.reduce((v, e) => v + e) / grades.length;
//   print('O aluno $name de $age anos teve média $avg');
// }

//* Função com parâmetros Opcionais
// void studentAverage([
//   String name = 'não identificado',
//   int? age,
//   List<int>? grades,
// ]) {
//   // final avg = grades.reduce((v, e) => v + e) / grades.length;
//   print('O aluno $name de $age anos teve média');
// }

//* Função com diferentes parâmetros (misto)
// void studentAverage(
//   int age,
//   List<int> grades, [
//   String name = 'não identificado',
// ]) {
//   final avg = grades.reduce((v, e) => v + e) / grades.length;
//   print('O aluno $name de $age anos teve média $avg');
// }
