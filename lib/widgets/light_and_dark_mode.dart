import 'package:flutter/material.dart';

class Mode extends StatelessWidget {
  const Mode({
    super.key,
    required this.valueNotifier, required this.mode,
  });
  final ThemeMode mode; 
  final ValueNotifier<ThemeMode> valueNotifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: Colors.blue,
        onPressed: () {
          valueNotifier.value =
              (mode == ThemeMode.light) ? ThemeMode.dark : ThemeMode.light;
        },
        child: Text(
          'press',
          style: Theme.of(context).textTheme.bodyLarge,
        ));
  }
}
