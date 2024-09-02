import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade300,
    appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(fontSize: 27, color: Colors.white)),
    brightness: Brightness.light,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
      bodyMedium: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      bodySmall: TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
    ),
    fontFamily: 'Roboto',
  );
}
