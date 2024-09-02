import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  final void Function()? ontap;
  const CustomIcon({
    super.key,
    required this.icon,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: ontap,
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
