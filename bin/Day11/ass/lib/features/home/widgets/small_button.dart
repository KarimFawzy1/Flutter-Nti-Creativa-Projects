import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/core/color_manager.dart';

class SmallButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const SmallButton({required this.icon, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.w, top: 20.w),
      width: 50.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: ColorManager.backgroundSecondary,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: ColorManager.whiteText),
        iconSize: 24.sp,
      ),
    );
  }
}
