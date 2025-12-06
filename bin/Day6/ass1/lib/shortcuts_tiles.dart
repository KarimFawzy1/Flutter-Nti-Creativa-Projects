import 'package:flutter/material.dart';

class ShortcutsTiles extends StatelessWidget {
  final String image;
  final String title;
  const ShortcutsTiles({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            color: Color(0xffFFEEE6),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(image),
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
