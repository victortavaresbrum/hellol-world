/*import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int stones = 0;
  int pieces = 0;
  int fragments = 0;
  String imgController = 'https://camo.githubusercontent.com/0abe58ebc2fe9cc1089ab3915e6156b2c30622b405529dc42965d603f468abf4/68747470733a2f2f692e696d6775722e636f6d2f6a54714e6137442e706e67';

  stonesCounter() {
    if (stones == 10) {
      stones = 0;
      pieces++;
      imgController = 'https://camo.githubusercontent.com/394b5b22aaad6b38d4d0ba61dd39c660d7f6f177cec3d435875f7deaa65b43e9/68747470733a2f2f692e696d6775722e636f6d2f495235536e36582e706e67';
    }
    if (pieces >= 10) {
      pieces = 0;
      fragments++;
      imgController = 'https://camo.githubusercontent.com/afc2d6fab0b5262d761f4f7ea53440db2d4363ff86d955e03837d0325963ecc8/68747470733a2f2f692e696d6775722e636f6d2f4a4165475262312e706e67';
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Color.fromARGB(255, 35, 35, 35)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Image.network(imgController),
            ),
            ElevatedButton(
                onPressed: (() => setState(() {
                      stones++;
                      stonesCounter();
                    })),
                child: Text('Clique aqui $stones')),
          ],
        ),
      ),
    );
  }
}
*/