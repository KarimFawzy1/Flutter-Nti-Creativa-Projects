import 'package:ass/core/color_manager.dart';
import 'package:ass/features/home/widgets/user_data.dart';
import 'package:flutter/material.dart';
import 'package:ass/core/bmi_functions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showBmiPopup(
  BuildContext context,
  double bmi,
  int weight,
  int height,
  int age,
  String gender,
) {
  String category = getBmiCategory(bmi);
  String healthyRange = getHealthyWeightRange(height);

  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      final bool isMale = gender == 'Male';
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: Container(
          padding: EdgeInsets.all(22.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
            color: isMale
                ? ColorManager.maleBackgroundColor
                : ColorManager.femaleBackgroundColor,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Your BMI:",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: ColorManager.blackColor,
                ),
              ),
              Text(
                bmi.toStringAsFixed(1),
                style: TextStyle(
                  fontSize: 48.sp,
                  fontWeight: FontWeight.bold,
                  color: isMale
                      ? ColorManager.textGreenColor
                      : ColorManager.textYellowColor,
                ),
              ),
              SizedBox(height: 8.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.5.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: isMale
                      ? ColorManager.lightGreen
                      : ColorManager.textYellowColor,
                ),
                child: Text(
                  category,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Divider(
                color: ColorManager.textSecondaryColor.withValues(alpha: 0.3),
                thickness: 1.w,
              ),
              SizedBox(height: 8.h),
              Wrap(
                // alignment: WrapAlignment.start,
                spacing: 10.w,
                runSpacing: 10.h,
                children: [
                  UserData(
                    label: "Weight",
                    value: weight.toString(),
                    selectedGender: gender,
                  ),
                  UserData(
                    label: "Height",
                    value: height.toString(),
                    selectedGender: gender,
                  ),
                  UserData(
                    label: "Age",
                    value: age.toString(),
                    selectedGender: gender,
                  ),
                  UserData(
                    label: "Gender",
                    value: gender,
                    selectedGender: gender,
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              Text(
                "Healthy weight for your height:",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 6.h),
              Text(
                healthyRange,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: isMale
                      ? ColorManager.textGreenColor
                      : ColorManager.textYellowColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isMale
                        ? ColorManager.textGreenColor
                        : ColorManager.textYellowColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.r),
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10.w,
                      horizontal: 20.w,
                    ),
                    child: Text(
                      "Close",
                      style: TextStyle(fontSize: 20.sp, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
