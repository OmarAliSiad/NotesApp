import 'package:flutter/material.dart';

class Mode extends StatelessWidget {
  const Mode({
    super.key,
    required this.valueNotifier,
    required this.mode,
  });
  final ThemeMode mode;
  final ValueNotifier<ThemeMode> valueNotifier;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          valueNotifier.value =
              (mode == ThemeMode.light) ? ThemeMode.dark : ThemeMode.light;
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey.withOpacity(.6)),
            child: Icon(
              Icons.dark_mode,
              color: (ThemeMode.light == mode) ? Colors.black : Colors.white,
            ),
          ),
        ));
  }
}
