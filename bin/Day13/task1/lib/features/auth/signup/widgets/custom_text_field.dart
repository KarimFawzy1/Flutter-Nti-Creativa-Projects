import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/core/color_manager.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
  });

  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 51.h,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.all(16.h),
            child: Image.asset(
              'assets/images/person.png',
              width: 24.w,
              height: 24.h,
              fit: BoxFit.contain,
            ),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: ColorManager.textSecondary,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 12.w),
        ),
      ),
    );
  }
}
