/*import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Coin());
}

class Coin extends StatefulWidget {
  @override
  State<Coin> createState() => _CoinState();
}

class _CoinState extends State<Coin> {
  int copper = 0;
  int silver = 0;
  int gold = 0;

  void coinCorrector() {
    if (copper == 10) {
      copper = 0;
      silver++;
    }
    if (silver >= 10) {
      silver = 0;
      gold++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Color.fromARGB(255, 161, 19, 255)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://acegif.com/wp-content/uploads/gifs/coin-flip-59.gif',
              width: 100,
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'Coin Game:\n\nCopper: $copper \nSilver: $silver  \nGold: $gold\n',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: (() {
                  setState(
                    () => copper++,
                  );
                  coinCorrector();
                }),
                child: Text('Clique aqui!'))
          ],
        ),
      ),
    );
  }
}
*/

