import 'package:flutter/material.dart';

class CalculatorTheme {
  static final ThemeData light  = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.pink,
    iconTheme: IconThemeData(color: Colors.pink)
  );
  static final ThemeData dark  = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.pink,
  );
  

}