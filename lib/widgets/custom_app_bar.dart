import 'package:flutter/material.dart';
import 'package:notesapp/theme/dark_theme.dart';
import 'package:notesapp/widgets/mode.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData icon;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Text(
          title,
          style: TextStyle(
              fontSize: darkTheme().appBarTheme.titleTextStyle!.fontSize),
        ),
        actions: [Mode(icon: icon)],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
