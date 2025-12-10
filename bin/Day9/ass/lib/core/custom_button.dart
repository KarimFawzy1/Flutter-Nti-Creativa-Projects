import 'package:ass/core/color_manager.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isOutline;
  const CustomButton({
    required this.text,
    required this.onTap,
    required this.isOutline,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: EdgeInsets.only(left: 18, right: 18, top: 16),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: isOutline
                ? ColorManager.white
                : ColorManager.primary, // outline color
            width: isOutline ? 1.5 : 0, // thickness of the outline
          ),
          color: isOutline
              ? ColorManager.transparentBackground
              : ColorManager.primary,
          borderRadius: BorderRadius.circular(23),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: ColorManager.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
