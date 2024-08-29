import 'package:flutter/material.dart';
import 'package:notesapp/widgets/mode.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData icon;

  CustomAppBar({
    super.key,
    required this.valueNotifier,
    this.mode,
    required this.title,
    required this.icon,
  });

  final ValueNotifier<ThemeMode> valueNotifier;
  ThemeMode? mode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Text(
          title,
        ),
        actions: [Mode(icon: icon, valueNotifier: valueNotifier, mode: mode)],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
