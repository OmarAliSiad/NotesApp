import 'package:flutter/material.dart';
import 'package:notesapp/theme/dark_theme.dart';
import 'package:notesapp/theme/light%20_theme.dart';
import 'package:notesapp/views/edit_note_view.dart';
import 'package:notesapp/views/home_page.dart';
import 'package:notesapp/widgets/custom_note_item.dart';
import 'package:notesapp/widgets/mode.dart';

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
              routes: {
                EditNoteView.id: (context) => const EditNoteView(),
              },
              themeMode: mode,
              theme: LightTheme(mode),
              darkTheme: DarkTheme(mode),
              debugShowCheckedModeBanner: false,
              home: HomePage(
                valueNotifier: valueNotifier,
              ));
        });
  }
}
