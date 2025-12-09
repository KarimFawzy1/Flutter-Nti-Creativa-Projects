import 'package:ass/core/color_manager.dart';
import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  const Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'BMI ',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: ColorManager.secondaryColor,
              ),
            ),
            TextSpan(
              text: 'Calculator',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: ColorManager.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
