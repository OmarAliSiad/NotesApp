import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final ValueNotifier<ThemeMode> valueNotifier;
  final ThemeMode mode;
  final String hintText;
  final int maxLines;
  final Color hint_color;
  const CustomTextField(
      {super.key,
      required this.valueNotifier,
      required this.hintText,
      this.maxLines = 1,
      required this.mode,
      required this.hint_color});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: Colors.blue,
      cursorHeight: 25,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: hint_color, fontSize: 24),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
                color: (valueNotifier.value == ThemeMode.light)
                    ? Colors.black
                    : Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.blue))),
    );
  }
}
