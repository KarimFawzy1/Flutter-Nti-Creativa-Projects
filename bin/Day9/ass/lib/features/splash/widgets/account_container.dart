import 'package:ass/core/color_manager.dart';
import 'package:flutter/material.dart';

class AccountContainer extends StatelessWidget {
  final String image;
  const AccountContainer({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 92,
      height: 64,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Image.asset('assets/images/$image.png'),
    );
  }
}
