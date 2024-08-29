import 'package:flutter/material.dart';

class Mode extends StatelessWidget {
  final IconData icon;
   Mode({
    super.key,
     this.valueNotifier,
     this.mode, required this.icon,
  });
   ThemeMode ?mode;
   ValueNotifier<ThemeMode>? valueNotifier;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          valueNotifier!.value =
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
              icon,
              color: (ThemeMode.light == mode) ? Colors.black : Colors.white,
            ),
          ),
        ));
  }
}
