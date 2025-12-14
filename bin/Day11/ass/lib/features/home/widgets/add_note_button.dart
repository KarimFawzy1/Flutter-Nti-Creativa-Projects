import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/core/color_manager.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 50.h, right: 20.w),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.35),
              blurRadius: 10,
              spreadRadius: 2.5,
              offset: Offset(1, 1),
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: ColorManager.background,
          foregroundColor: ColorManager.whiteText,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.r),
          ),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
