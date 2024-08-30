import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key});

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  ValueNotifier<ThemeMode> valueNotifier = ValueNotifier(ThemeMode.dark);
  ThemeMode mode = ThemeMode.dark;
  String? title, subtitle;
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
                onSaved: (value) {
                  title = value;
                },
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
                onSaved: (value) {
                  subtitle = value;
                },
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
