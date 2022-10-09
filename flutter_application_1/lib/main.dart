import 'package:flutter/material.dart';


void main(){
  runApp(App());
}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [Colors.red, Colors.blue])
            ),
          child:Center(
            child: Text(
                'Flutter Gradient',
                style: TextStyle(color: Colors.white,fontSize: 32),
              ),
          ),
        ),
      );
  }
}