import 'package:flutter/material.dart';

ThemeData darkTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(fontSize: 30, color: Colors.white)),
    brightness: Brightness.dark,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 28, color: Colors.white),
      bodyMedium: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      bodySmall: TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
    ),
    fontFamily: 'Roboto',
  );
}
