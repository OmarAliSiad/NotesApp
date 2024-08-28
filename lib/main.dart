import 'package:flutter/material.dart';
import 'package:notesapp/widgets/light_and_dark_mode.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  final ValueNotifier<ThemeMode> valueNotifier = ValueNotifier(ThemeMode.light);
  NotesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: valueNotifier,
        builder: (context, mode, widget) {
          return MaterialApp(
            themeMode: mode,
            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                  titleTextStyle: TextStyle(fontSize: 28, color: Colors.black)),
              brightness: Brightness.light,
              textTheme: const TextTheme(
                bodyLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                bodyMedium:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                bodySmall: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            darkTheme: ThemeData.dark(),
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                title: const Text(
                  'Notes',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              body:
                  Center(child: Mode(valueNotifier: valueNotifier, mode: mode)),
            ),
          );
        });
  }
}
