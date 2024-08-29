import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  ValueNotifier<ThemeMode> valueNotifier = ValueNotifier(ThemeMode.dark);
  ThemeMode mode = ThemeMode.dark;
  EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
            valueNotifier: valueNotifier,
            title: 'Edits Note',
            icon: Icons.check),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              CustomTextField(
                hint_color: Colors.grey,
                mode: mode,
                maxLines: 1,
                valueNotifier: valueNotifier,
                hintText: 'Title',
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                hint_color: Colors.grey,
                mode: mode,
                maxLines: 5,
                valueNotifier: valueNotifier,
                hintText: 'Content',
              ),
            ],
          ),
        )
      ],
    );
  }
}
