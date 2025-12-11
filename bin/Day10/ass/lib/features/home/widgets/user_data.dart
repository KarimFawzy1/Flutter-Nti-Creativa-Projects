import 'package:ass/core/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserData extends StatelessWidget {
  final String label;
  final String value;
  final String selectedGender;
  const UserData({
    super.key,
    required this.label,
    required this.value,
    required this.selectedGender,
  });

  @override
  Widget build(BuildContext context) => Text.rich(
    textAlign: TextAlign.center,
    TextSpan(
      children: [
        TextSpan(
          text: "$value\n",
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: selectedGender == 'Male'
                ? ColorManager.textGreenColor
                : ColorManager.textYellowColor,
          ),
        ),
        TextSpan(
          text: label,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: ColorManager.textSecondaryColor,
          ),
        ),
      ],
    ),
  );
}
