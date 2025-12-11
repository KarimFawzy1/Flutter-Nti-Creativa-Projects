import 'package:ass/core/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:ass/core/width_height.dart';

class Bar extends StatelessWidget {
  const Bar({super.key});

  @override
  Widget build(BuildContext context) {
    WidthHeight.init(context);
    return Center(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'BMI ',
              style: TextStyle(
                //225*46
                fontSize: WidthHeight.screenWidth * 0.085,
                fontWeight: FontWeight.bold,
                color: ColorManager.secondaryColor,
              ),
            ),
            TextSpan(
              text: 'Calculator',
              style: TextStyle(
                fontSize: WidthHeight.screenWidth * 0.085,
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
