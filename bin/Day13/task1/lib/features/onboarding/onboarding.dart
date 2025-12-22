import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/color_manager.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Spacer(),
            SizedBox(
              width: 222.w,
              height: 224.h,
              child: Image.asset('assets/images/onboarding.png'),
            ),
            SizedBox(height: 75.h),
            SizedBox(
              width: 343.w,
              child: Text(
                "Help your path to health goals with happiness",
                style: TextStyle(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold,
                  color: ColorManager.whiteText,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 80.h),
            SizedBox(
              width: 327.w,
              height: 54.h,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/signup');
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorManager.primary,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: ColorManager.whiteText,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 75.h),
          ],
        ),
      ),
    );
  }
}
