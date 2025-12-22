import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/core/color_manager.dart';

class CategoryContainer extends StatelessWidget {
  final String categoryName;
  final bool isSelected;
  const CategoryContainer({
    super.key,
    required this.categoryName,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.w),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: isSelected
            ? ColorManager.secondary
            : ColorManager.backgroundSecondary,
        borderRadius: BorderRadius.circular(40),
      ),
      alignment: Alignment.center,
      child: Text(
        categoryName,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: isSelected ? ColorManager.whiteText : ColorManager.text,
        ),
      ),
    );
  }
}
