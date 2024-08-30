import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_button.dart';
import 'package:notesapp/widgets/custom_text_field.dart';
import 'package:notesapp/widgets/mode.dart';

class AddNoteBottomSheet extends StatefulWidget {
  ValueNotifier<ThemeMode> valueNotifier;
  static final formState = GlobalKey<FormState>();

  AddNoteBottomSheet({super.key, required this.valueNotifier});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  ThemeMode mode = ThemeMode.light;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Form(
          key: AddNoteBottomSheet.formState,
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
                  subtitle = value;
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
                  if (AddNoteBottomSheet.formState.currentState!.validate()) {
                    AddNoteBottomSheet.formState.currentState!.save();
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
        ),
      ),
    );
  }
}
