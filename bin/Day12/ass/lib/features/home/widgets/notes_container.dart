import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/core/color_manager.dart';

class NotesContainer extends StatelessWidget {
  final String noteLabel;
  final Color noteColor;
  final VoidCallback onDelete;
  final VoidCallback onTap;

  const NotesContainer({
    required this.noteLabel,
    required this.noteColor,
    required this.onDelete,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.endToStart,
      background: Center(
        child: Container(
          margin: EdgeInsets.only(bottom: 20.h),
          width: 365.w,
          decoration: BoxDecoration(
            color: ColorManager.primary,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
            child: Icon(Icons.delete, color: Colors.white, size: 32.sp),
          ),
        ),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Center(
          child: Container(
            margin: EdgeInsets.only(bottom: 20.h),
            width: 365.w,
            decoration: BoxDecoration(
              color: noteColor,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32.0,
                vertical: 16.0,
              ),
              child: Text(
                noteLabel,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ),
      ),
      onDismissed: (direction) {
        onDelete();
      },
    );
  }
}
