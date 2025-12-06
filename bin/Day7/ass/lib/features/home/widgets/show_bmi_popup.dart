import 'package:ass/core/color_manager.dart';
import 'package:ass/features/home/home_screen.dart';
import 'package:ass/features/home/widgets/user_data.dart';
import 'package:flutter/material.dart';
import 'dart:ui'; // for ImageFilter

void showBmiPopup(
  BuildContext context,
  double bmi,
  int weight,
  int height,
  String selectedGender,
  int age,
) {
  String category = getBmiCategory(bmi);
  String healthyRange = getHealthyWeightRange(height);

  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.white.withOpacity(0), // keep the blur only
            ),
          ),
          Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Container(
              padding: EdgeInsets.all(22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: selectedGender == 'Male'
                    ? ColorManager.maleBackgroundColor
                    : ColorManager.femaleBackgroundColor,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Your BMI:",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: ColorManager.blackColor,
                    ),
                  ),
                  // SizedBox(height: 12),
                  Text(
                    bmi.toStringAsFixed(1),
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: selectedGender == 'Male'
                          ? ColorManager.textGreenColor
                          : ColorManager.textYellowColor,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: selectedGender == 'Male'
                          ? ColorManager.lightGreen
                          : ColorManager.textYellowColor,
                    ),
                    child: Text(
                      category,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Divider(
                    color: ColorManager.textSecondaryColor.withOpacity(0.3),
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UserData(
                        label: "weight",
                        value: weight.toString(),
                        selectedGender: selectedGender,
                      ),
                      UserData(
                        label: "height",
                        value: height.toString(),
                        selectedGender: selectedGender,
                      ),
                      UserData(
                        label: "age",
                        value: age.toString(),
                        selectedGender: selectedGender,
                      ),
                      UserData(
                        label: "Gender",
                        value: selectedGender == 'Male' ? "Male" : "Female",
                        selectedGender: selectedGender,
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Healthy weight for your height:",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 6),
                  Text(
                    healthyRange,
                    style: TextStyle(
                      fontSize: 16,
                      color: selectedGender == 'Male'
                          ? ColorManager.textGreenColor
                          : ColorManager.textYellowColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedGender == 'Male'
                            ? ColorManager.textGreenColor
                            : ColorManager.textYellowColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        child: Text(
                          "Close",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    },
  );
}
