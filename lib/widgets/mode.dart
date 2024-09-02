import 'package:flutter/material.dart';

class Mode extends StatelessWidget {
  final IconData icon;
  const Mode({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey.withOpacity(.6)),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ));
  }
}
