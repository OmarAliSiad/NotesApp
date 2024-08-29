import 'package:flutter/material.dart';
import 'package:notesapp/widgets/add_note_bottom_sheet.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_note_item.dart';
import 'package:notesapp/widgets/mode.dart';

class HomePage extends StatelessWidget {
  final ValueNotifier<ThemeMode> valueNotifier;
  HomePage({super.key, required this.valueNotifier});
  final List<Color> colors = [
    Colors.orangeAccent,
    Colors.greenAccent,
    Colors.blueAccent,
    Colors.purpleAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: valueNotifier,
        builder: (context, mode, widget) {
          return Scaffold(
            appBar: CustomAppBar(
              valueNotifier: valueNotifier,
              mode: mode,
              title: 'Notes',
              icon: Icons.dark_mode,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: ListView.builder(
                itemCount: colors.length,
                itemBuilder: (context, index) =>
                    CustomNoteItem(color: colors[index]),
              ),
            ),
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(right: 0),
              child: FloatingActionButton(
                onPressed: () async {
                  return await showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return AddNoteBottomSheet(
                          valueNotifier: valueNotifier,
                        );
                      });
                },
                backgroundColor: Colors.blue,
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            ),
          );
        });
  }
}
