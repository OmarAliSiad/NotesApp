import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_button.dart';
import 'package:notesapp/widgets/custom_text_field.dart';
import 'package:notesapp/widgets/mode.dart';

class AddNoteBottomSheet extends StatelessWidget {
  ValueNotifier<ThemeMode> valueNotifier;
  ThemeMode mode = ThemeMode.light;
  AddNoteBottomSheet({super.key, required this.valueNotifier});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              hint_color: Colors.blue,
              mode: mode,
              maxLines: 1,
              valueNotifier: valueNotifier,
              hintText: 'Title',
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              hint_color: Colors.blue,
              mode: mode,
              maxLines: 5,
              valueNotifier: valueNotifier,
              hintText: 'Content',
            ),
            const SizedBox(
              height: 50,
            ),
            const CustomButton(),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
