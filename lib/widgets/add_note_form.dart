import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_button.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  final ValueNotifier<ThemeMode> valueNotifier;
  const AddNoteForm({
    super.key,
    required this.valueNotifier,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  String? title;
  String? subtitle;
  ThemeMode mode = ThemeMode.light;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formState,
      child: Column(
        children: [
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint_color: Colors.blue,
            mode: mode,
            maxLines: 1,
            valueNotifier: widget.valueNotifier,
            hintText: 'Title',
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint_color: Colors.blue,
            mode: mode,
            maxLines: 5,
            valueNotifier: widget.valueNotifier,
            hintText: 'Content',
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            onTap: () {
              if (formState.currentState!.validate()) {
                formState.currentState!.save();
                print(title);
                print(subtitle);
              }
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
