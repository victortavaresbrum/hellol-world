/*import 'package:flutter/material.dart';

void main() {
  runApp(MyStateLessText());
}

class MyStateLessText extends StatelessWidget {
  const MyStateLessText();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20.0,
                        color: Color.fromARGB(255, 0, 153, 255),
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/foto-perfil-linkedin.jpeg'),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ColorFull(cor: Colors.pinkAccent,),
                  ColorFull(cor: Colors.pinkAccent,),
                ],
              ),
            ]),
      ),
    );
  }
}

class ColorFull extends StatelessWidget {
  
  final Color? cor;
  
  const ColorFull({Key? key, this.cor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
                color: cor,
                width: 100,
                height: 100,
                margin: EdgeInsets.only(bottom: 20)),
            const Text(
              'Ponto Digital',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 153, 255),
                  decoration: TextDecoration.none,
                  fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
*/