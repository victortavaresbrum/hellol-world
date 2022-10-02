
// //////////////////////////////Funções com argumentos

// void main() {
//   //* Invocações
//   // studentAverage('Romão', 28, [8, 5, 7, 9]);
//   // studentAverage(null, 28, [8, 5, 7, 9]);

//   // studentAverage(name: 'Romão', grades: [8, 5, 7, 9], age: 28);
//   // studentAverage(age: 28, grades: [8, 5, 7, 9]);

//   // studentAverage('Romão', 28, [8, 5, 7, 9]);
//   // studentAverage(28, [8, 5, 7, 9], 'Romão');

//   //? Variável como parâmetro
//   final myAge = 28;
//   final grades = [8, 5, 7, 9];
//   studentAverage('Romão', myAge, grades);
//   print(myAge);
//   print(grades);
// }

// //* Função com parâmetros Obrigatórios
// // void studentAverage(String name, int age, List<int> grades) {
// // void studentAverage(String? name, int age, List<int> grades) {
// //   final avg = grades.reduce((v, e) => v + e) / grades.length;
// //   print('O aluno $name de $age anos teve média $avg');
// // }

// void studentAverage(String name, int age, List<int> grades) {
//   // age = 29;
//   grades.add(10);
//   final avg = grades.reduce((v, e) => v + e) / grades.length;
//   print('O aluno $name de $age anos teve média $avg');
// }

// //* Função com parâmetros Nomeados - required, null x valor padrão
// // void studentAverage({
// //   String name = 'não identificado',
// //   required int age,
// //   required List<int> grades,
// // }) {
// //   final avg = grades.reduce((v, e) => v + e) / grades.length;
// //   print('O aluno $name de $age anos teve média $avg');
// // }

// //* Função com parâmetros Opcionais
// // void studentAverage([
// //   String name = 'não identificado',
// //   int? age,
// //   List<int>? grades,
// // ]) {
// //   // final avg = grades.reduce((v, e) => v + e) / grades.length;
// //   print('O aluno $name de $age anos teve média');
// // }

// //* Função com diferentes parâmetros (misto)
// // void studentAverage(
// //   int age,
// //   List<int> grades, [
// //   String name = 'não identificado',
// // ]) {
// //   final avg = grades.reduce((v, e) => v + e) / grades.length;
// //   print('O aluno $name de $age anos teve média $avg');
// // }





// //////////////////////////////FUNÇÕES ANONIMAS
// void main() {
//   //* Estrutura - forEach
//   // final numbers = [1, 5, 6];
//   // numbers.forEach(action);
//   // numbers.forEach(myAnonymousFunction);

//   //* Convenção: parâmetros não utilizados
//   // print(numbers.reduce((value, _) => value + 1));

//   //* Invocação - Lista de funcionários
//   buildEmployeeLine((name, job, city, salary) {
//     print('$name $job $city $salary');
//   });
// }

// //* Função com nome
// // [tipo] functionName(tipo param1, tipo param2, ...) {}
// // void action(int element) {
// //   print(element);
// // }

// //* Função sem nome - anônima ou lambda
// // ([tipo] param1, [tipo] param2, ...) {}
// // final myAnonymousFunction = (int element) {
// //   print(element);
// // };

// //* Exemplo - Lista de funcionários
// void buildEmployeeLine(
//   void Function(String name, String job, String city, String salary) builder,
// ) {
//   final employees = [
//     ['Romão', 'Professor', 'Florianópolis', '2000'],
//     ['Juninho', 'CEO', 'Salvador', '5000'],
//     ['Clara', 'Head', 'Vancouver', '4000'],
//   ];
//   for (final employee in employees) {
//     print('Divisor');
//     builder(employee[0], employee[1], employee[2], employee[3]);
//   }
// }


// /////////////FUNÇÕES COM RETORNO
// ///
// ///// void main() {
// //* Invocações
// // final result = sum();
// // final result2 = 1 + result;
// // }

// //* Tipagem
// // [tipo] functionName() {
// //   Código
// // }

// // int sum() {
// //   return 1 + 1;
// // }

// // sum() {
// //   return 'String';
// // }

// //* return
// // String concatenate(String firstName, String secondName) {
// //   final fullName = '$firstName $secondName';
// //   return 2;
// // }

// // void doSomething() {}

// //* Calculadora
// import 'dart:io';

// void main() {
//   // Nao deletar
//   final inputs = readFromKeyboard(stdin.readLineSync() ?? '');

//   // Variaveis iniciais
//   final number1 = double.parse(inputs[0]);
//   final operator = inputs[1];
//   final number2 = double.parse(inputs[2]);

//   // Escreva seu programa a partir daqui
//   final result = calculate(number1, operator, number2);
//   final msg = formatMessage(result);
//   print(msg);
// }

// List<String> readFromKeyboard(String line) {
//   if (line.isEmpty) exit(0);
//   return line.split(' ');
// }

// double calculate(double number1, String operator, double number2) {
//   switch (operator) {
//     case '-':
//       return number1 - number2;
//     case '*':
//       return number1 * number2;
//     case '/':
//       return number1 / number2;
//     default:
//       return number1 + number2;
//   }
// }

// String formatMessage(double result) {
//   final resultAprox = result.toStringAsFixed(5);
//   final resultInteiro = result ~/ 1;
//   final resultResto = result % 1;

//   return resultResto > 0
//       ? double.parse(resultAprox).toString()
//       : resultInteiro.toString();
// }
// ///////////////////Funções de extensão
// ///
// ///import 'dart:io';

// //* Estrutura - extension + on | this -> current instance
// extension Calculadora on double {
//   double plus(double other) => this + other;
//   double minus(double other) => this - other;
//   double times(double other) => this * other;
//   double dividedBy(double other) => this / other;
//   int integerPart() => this ~/ 1;fff
//   double decimalPart() => this % 1;
// }

// // * Exemplo
// void main() {
//   // final name = 'Romão';
//   // name.toUpperCase();

//   final inputs = readFromKeyboard(stdin.readLineSync() ?? '');
//   final number1 = double.parse(inputs[0]);
//   final operator = inputs[1];
//   final number2 = double.parse(inputs[2]);
//   final result = calculate(number1, operator, number2);
//   final msg = formatMessage(result);
//   print(msg);
// }

// List<String> readFromKeyboard(String line) {
//   if (line.isEmpty) exit(0);
//   return line.split(' ');
// }

// double calculate(double number1, String operator, double number2) {
//   switch (operator) {
//     case '-':
//       return number1.minus(number2);
//     case '*':
//       return number1.times(number2);
//     case '/':
//       return number1.dividedBy(number2);
//     default:
//       return number1.plus(number2);
//   }
// }

// String formatMessage(double result) {
//   final resultAprox = result.toStringAsFixed(5);
//   final resultInteiro = result.integerPart();
//   final resultResto = result.decimalPart();

//   return resultResto > 0
//       ? double.parse(resultAprox).toString()
//       : resultInteiro.toString();
// }