import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/core/color_manager.dart';

class IngredientsContainer extends StatelessWidget {
  final String image;
  final String text;
  final String quantity;
  const IngredientsContainer({
    super.key,
    required this.image,
    required this.text,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 267.w,
            height: 80.h,
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.symmetric(vertical: 5.h),
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Color(0x1A063336),
                  offset: Offset(0, 2),
                  blurRadius: 16,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Center(
              child: Row(
                children: [
                  Container(
                    width: 48.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                      color: Color(0xFFE6EBF2),
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
                  Spacer(),
                  Text(
                    quantity,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: ColorManager.text,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
