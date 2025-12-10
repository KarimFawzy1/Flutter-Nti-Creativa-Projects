import 'package:flutter/material.dart';
import 'package:task/core/colors_manager.dart';

class Bar extends StatelessWidget {
  const Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 2,
      shadowColor: Colors.black.withValues(alpha: 0.8),
      backgroundColor: ColorsManager.primary,
      title: Text(
        'Bmi Calculator',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
    );
  }
}
