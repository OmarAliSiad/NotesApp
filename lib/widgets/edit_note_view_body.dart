import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key});

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(title: 'Edits Note', icon: Icons.check),
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
                maxLines: 1,
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
                maxLines: 5,
                hintText: 'Content',
              ),
            ],
          ),
        )
      ],
    );
  }
}
