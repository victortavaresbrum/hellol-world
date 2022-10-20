import 'package:flutter/material.dart';
import 'theme.dart';
import 'display.dart';
import 'number_button.dart';
import 'operador_button.dart';

const String appName = 'Calculadora Simples';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode currentThemeMode = ThemeMode.light;

  void toggleThemeMode() {
    setState(() {
      currentThemeMode = currentThemeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      themeMode: currentThemeMode,
      theme: CalculatorTheme.light,
      darkTheme: CalculatorTheme.dark,
      home: Calculator(onThemeModePressed: toggleThemeMode),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key, required this.onThemeModePressed});

  final VoidCallback onThemeModePressed;

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  static const operadores = ['x', '-', '+'];

  String display = '0';
  String firstNumber = '';
  String secondNumber = '';
  String operador = '';
  double progress = 0.0;
  bool disableOperadorButton = false;

  void insert(String char) {
    if (char == '0') {
      if (operador.isEmpty && firstNumber.isEmpty) return;
      if (operador.isNotEmpty && secondNumber.isEmpty) return;
    }

    if (operadores.contains(char)) {
      if (firstNumber.isEmpty) {
        firstNumber = '0';
      }

      operador = char;
    } else {
      if (operador.isEmpty) {
        firstNumber += char;
      } else {
        secondNumber += char;
      }
    }
    setState(() {
      if (operador.isEmpty) {
        display = firstNumber;
        progress = 0.33;
      } else {
        if (secondNumber.isEmpty) {
          display = '$firstNumber $operador';
          progress = 0.66;
        } else {
          display = '$firstNumber $operador $secondNumber';
          progress = 1.0;
          disableOperadorButton = true;
        }
      }
    });
  }

  void clear() {
    firstNumber = '';
    operador = '';
    secondNumber = '';
    setState(() {
      display = '0';
      progress = 0;
      disableOperadorButton = false;
    });
  }

  void calculate() {
    int calculater = 0;
    int number1 = int.parse(firstNumber);
    int number2 = int.parse(secondNumber);

    switch (operador) {
      case 'x':
        calculater = number1 * number2;
        break;
      case '-':
        calculater = number1 - number2;
        break;
      default:
        calculater = number1 + number2;
    }

    firstNumber = calculater.toString();
    secondNumber = '';
    operador = '';
    progress = 0.33;

    setState(() {
      display = calculater.toString();
      disableOperadorButton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            appName,
          ),
          actions: [
            IconButton(
                onPressed: widget.onThemeModePressed,
                icon: Icon(
                  theme.brightness == Brightness.light
                    ? Icons.dark_mode
                    : Icons.light_mode)),
          ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 70.0),
        child: FloatingActionButton(
          onPressed: () {
            clear();
          },
          child: const Text('C'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Display(display: display),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(child: LinearProgressIndicator(value: progress)),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                NumberButton(number: '7', onNumberPressed: insert),
                NumberButton(number: '8', onNumberPressed: insert),
                NumberButton(number: '9', onNumberPressed: insert),
                OperadorButton(
                  disabled: disableOperadorButton,
                  operador: 'x',
                  onOperadorPressed: insert,
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                NumberButton(number: '4', onNumberPressed: insert),
                NumberButton(number: '5', onNumberPressed: insert),
                NumberButton(number: '6', onNumberPressed: insert),
                OperadorButton(
                  disabled: disableOperadorButton,
                  operador: '-',
                  onOperadorPressed: insert,
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                NumberButton(number: '1', onNumberPressed: insert),
                NumberButton(number: '2', onNumberPressed: insert),
                NumberButton(number: '3', onNumberPressed: insert),
                OperadorButton(
                  disabled: disableOperadorButton,
                  operador: '+',
                  onOperadorPressed: insert,
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    flex: 3,
                    child: OutlinedButton(
                        onPressed: () => insert('0'),
                        child:
                            const Text('0', style: TextStyle(fontSize: 24)))),
                Expanded(
                    child: OutlinedButton(
                        onPressed: () => calculate(),
                        child: const Text('=', style: TextStyle(fontSize: 24))))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
