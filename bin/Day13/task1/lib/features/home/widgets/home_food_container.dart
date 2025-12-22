import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/core/color_manager.dart';
import 'package:task1/features/details/details_screen.dart';

class HomeFoodContainer extends StatelessWidget {
  final String image;
  final String title;
  final String calories;
  final String time;
  const HomeFoodContainer({
    super.key,
    required this.image,
    required this.title,
    required this.calories,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailsScreen()),
        );
      },
      child: Container(
        margin: EdgeInsets.all(4.w),
        width: 174.13.w,
        height: 259.41.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: const Color(0x1A063336),
              offset: Offset(0, 2),
              blurRadius: 16,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                Container(
                  width: 152.w,
                  height: 136.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    children: [
                      Image.asset(
                        image,
                        width: 152.w,
                        height: 136.h,
                        fit: BoxFit.fill,
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: Container(
                          width: 25.w,
                          height: 29.h,
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: SizedBox(
                            width: 24.w,
                            height: 24.h,
                            child: Image.asset('assets/images/Heart.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: ColorManager.text,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/Calories.png'),
                // SizedBox(width: 4.w),
                Text(
                  calories,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: ColorManager.textTertiary,
                  ),
                ),
                // SizedBox(width: 4.w),
                Container(
                  width: 4.w,
                  height: 4.h,
                  decoration: BoxDecoration(
                    color: ColorManager.textTertiary,
                    shape: BoxShape.circle,
                  ),
                ),
                // SizedBox(width: 4.w),
                Image.asset('assets/images/TimeCircle.png'),
                // SizedBox(width: 4.w),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: ColorManager.textTertiary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
