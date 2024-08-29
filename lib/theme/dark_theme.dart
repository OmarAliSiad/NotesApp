import 'package:flutter/material.dart';

ThemeData DarkTheme(ThemeMode mode) {
  return ThemeData(
    appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
            fontSize: 27,
            color: (ThemeMode.light == mode) ? Colors.black : Colors.white)),
    brightness: Brightness.dark,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 28,
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
