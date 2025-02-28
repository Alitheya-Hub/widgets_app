import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blueAccent,
  Colors.pink,
  Colors.orange,
  Colors.greenAccent,
  Colors.redAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0,
        'Selectected color need to be greater than cero',
      ),
      assert(
        selectedColor < colorList.length,
        'Selectected color need to be less than ${colorList.length}',
      );

  ThemeData getTheme() => ThemeData(
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme(
      centerTitle: true,
    )
  );
}
