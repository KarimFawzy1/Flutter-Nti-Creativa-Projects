import 'package:ass/core/color_manager.dart';
import 'package:ass/features/home/widgets/user_data.dart';
import 'package:flutter/material.dart';
import 'package:ass/core/bmi_functions.dart';

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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Container(
          padding: EdgeInsets.all(22),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
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
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: ColorManager.blackColor,
                ),
              ),
              Text(
                bmi.toStringAsFixed(1),
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: isMale
                      ? ColorManager.textGreenColor
                      : ColorManager.textYellowColor,
                ),
              ),
              SizedBox(height: 8),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: isMale
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
                color: ColorManager.textSecondaryColor.withValues(alpha: 0.3),
                thickness: 1,
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  color: isMale
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
                    backgroundColor: isMale
                        ? ColorManager.textGreenColor
                        : ColorManager.textYellowColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
      );
    },
  );
}
