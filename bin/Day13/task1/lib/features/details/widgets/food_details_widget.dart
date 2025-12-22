import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/core/color_manager.dart';

class FoodDetailsWidget extends StatelessWidget {
  final String image;
  final String text;
  const FoodDetailsWidget({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 41.59.w,
          height: 49.27.h,
          decoration: BoxDecoration(
            color: const Color(0xFFE6EBF2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset(image),
        ),
        SizedBox(width: 10.w),
        Text(
          text,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: ColorManager.text,
          ),
        ),
      ],
    );
  }
}
