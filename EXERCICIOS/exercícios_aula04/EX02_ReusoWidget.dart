/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Column(children: [
        MyComponent(largura: 150, cor: Colors.blue),
        MyComponent(largura: 80, cor: Colors.blue),
        MyComponent(largura: 250, cor: Color.fromARGB(255, 16, 36, 52)),
      ]
      ,)
    );
  }
}

class MyComponent extends StatelessWidget {
  
  final  double largura;
  final Color cor;
  const MyComponent({super.key, required this.largura, required this.cor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: largura,
      color:cor,
      height: 150,
      alignment: Alignment.center,
   );
  }
}*/