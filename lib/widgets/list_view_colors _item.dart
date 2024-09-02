import 'package:flutter/material.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  List<Color> colors = [
    Colors.white,
    Colors.black,
    const Color(0xff9C27B0),
    const Color(0xff673AB7),
    const Color(0xff3F51B5),
    const Color(0xff03A9F4),
    const Color(0xff00BCD4),
    const Color(0xff009688),
    const Color(0xff4CAF50),
    const Color(0xff8BC34A),
    const Color(0xffCDDC39),
    const Color(0xffFFEB3B),
    const Color(0xffFF9800),
    const Color(0xffFF5722),
    const Color(0xff795548),
    const Color(0xff9E9E9E),
    const Color(0xff607D8B),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: ColorItem(
              isActive: (currentIndex == index),
              index: index,
              color: colors[index],
            ),
          );
        },
      ),
    );
  }
}

class ColorItem extends StatelessWidget {
  final bool isActive;
  final int index;
  final Color color;
  const ColorItem(
      {super.key,
      required this.isActive,
      required this.color,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return (isActive)
        ? CircleAvatar(
            radius: 40,
            backgroundColor: (index == 0) ? Colors.grey[600] : Colors.white,
            child: CircleAvatar(
              radius: 18,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 20,
            backgroundColor: color,
          );
  }
}
