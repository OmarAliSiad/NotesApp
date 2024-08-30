import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final ValueNotifier<ThemeMode> valueNotifier;
  final ThemeMode mode;
  final String hintText;
  final int maxLines;
  final Color hint_color;
  final void Function(String?)? onSaved;

  const CustomTextField(
      {super.key,
      required this.valueNotifier,
      required this.hintText,
      this.maxLines = 1,
      required this.mode,
      required this.hint_color,
      required this.onSaved});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: widget.onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          autovalidateMode = AutovalidateMode.always;

          return 'The Field is required';
        } else {
          return null;
        }
      },
      maxLines: widget.maxLines,
      cursorColor: Colors.blue,
      autovalidateMode: autovalidateMode,
      cursorHeight: 25,
      decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(color: widget.hint_color, fontSize: 24),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
                color: (widget.valueNotifier.value == ThemeMode.light)
                    ? Colors.black
                    : Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.blue))),
    );
  }
}
