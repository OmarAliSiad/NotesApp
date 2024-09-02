import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap, this.isloading = false});
  final void Function()? onTap;
  final bool isloading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.blue[800], borderRadius: BorderRadius.circular(8)),
        child: (isloading)
            ? const Center(
                child: SizedBox(
                height: 30,
                width: 30,
                child: CircularProgressIndicator(
                  color: Colors.blue,
                  backgroundColor: Colors.white,
                ),
              ))
            : const Center(child: Text('Add')),
      ),
    );
  }
}
