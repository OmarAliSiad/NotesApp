import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.blue[800], borderRadius: BorderRadius.circular(8)),
      child: const Center(child: Text('Add')),
    );
  }
}
