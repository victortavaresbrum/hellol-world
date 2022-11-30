import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;

  TextEditingController _controller = TextEditingController();

  int randomInt = 0;

  late final myFocusNode = FocusNode();

  FocusNode campo1 = FocusNode();
  FocusNode campo2 = FocusNode();
  FocusNode campo3 = FocusNode();
  FocusNode campo4 = FocusNode();
  FocusNode campo5 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Focus Random',
            style: TextStyle(fontSize: 24),
          ),
          backgroundColor: Colors.green.shade800,
          centerTitle: true,
        ),
        body: SizedBox.expand(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Sorteado: $randomInt',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.green.shade900),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextField(
                  focusNode: campo1,
                ),
                TextField(focusNode: campo2),
                TextField(focusNode: campo3),
                TextField(focusNode: campo4),
                TextField(focusNode: campo5),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Colors.green.shade900)),
                        onPressed: () {
                          setState(() {
                            randomInt = Random().nextInt(5) + 1;
                          });
                          if (randomInt == 1) {
                            FocusScope.of(context).requestFocus(campo1);
                          } else if (randomInt == 2) {
                            FocusScope.of(context).requestFocus(campo2);
                          } else if (randomInt == 3) {
                            FocusScope.of(context).requestFocus(campo3);
                          } else if (randomInt == 4) {
                            FocusScope.of(context).requestFocus(campo4);
                          } else if (randomInt == 5) {
                            FocusScope.of(context).requestFocus(campo5);
                          }
                        },
                        child: const Text('Focus Random')))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
