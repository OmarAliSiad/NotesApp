import 'package:flutter/material.dart';

ThemeData LightTheme(ThemeMode mode) {
  return ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade500,
    appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
            fontSize: 27,
            color: (ThemeMode.light == mode) ? Colors.black : Colors.white)),
    brightness: Brightness.light,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: (ThemeMode.light == mode) ? Colors.black : Colors.white),
      bodyMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: (ThemeMode.light == mode) ? Colors.black : Colors.white),
      bodySmall: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: (ThemeMode.light == mode) ? Colors.black : Colors.white),
    ),
  );
}
