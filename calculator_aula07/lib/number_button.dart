import 'package:flutter/material.dart';


typedef NumberPressedCallback = void Function(String);

class NumberButton extends StatelessWidget {
  
  
  const NumberButton({
    super.key,
    required this.number,
    required this.onNumberPressed
  });

  final String number;
  final NumberPressedCallback onNumberPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(shape: BeveledRectangleBorder()),
        onPressed: () => onNumberPressed(number), 
        child: Text(number, style: const TextStyle(fontSize: 24)), 
      ),
    );
  }
}
