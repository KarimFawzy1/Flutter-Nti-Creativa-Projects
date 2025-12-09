import 'package:ass/features/home/widgets/height_slider.dart';
import 'package:ass/features/home/widgets/show_bmi_popup.dart';
import 'package:flutter/material.dart';
import 'package:ass/core/bar.dart';
import 'package:ass/core/color_manager.dart';
import 'package:ass/features/home/widgets/weight_age_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int height = 166;
  int weight = 75;
  int age = 22;
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String gender = arguments['gender'] as String;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: Stack(
          children: [
            Bar(),
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                padding: EdgeInsets.only(left: 18),
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: ColorManager.primaryColor,
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
              ),
            ),
          ],
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Please Modify the values",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: ColorManager.blackColor,
              ),
            ),
            SizedBox(height: 30),
            // Text(gender),
            // SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WeightAgeTile(
                  selectedGender: gender,
                  label: "Weight (kg)",
                  value: weight.toDouble(),
                  onAdd: () {
                    setState(() {
                      weight++;
                    });
                  },
                  onRemove: () {
                    setState(() {
                      if (weight > 0) {
                        weight--;
                      }
                    });
                  },
                ),
                WeightAgeTile(
                  selectedGender: gender,
                  label: "Age",
                  value: age.toDouble(),
                  onAdd: () {
                    setState(() {
                      age++;
                    });
                  },
                  onRemove: () {
                    setState(() {
                      if (age > 0) {
                        age--;
                      }
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 30),
            HeightSlider(
              selectedGender: gender,
              height: height,
              onHeightChanged: (value) {
                setState(() {
                  height = value;
                });
              },
            ),
            SizedBox(height: 40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  double bmi = calculateBMI(weight, height);
                  showBmiPopup(context, bmi, weight, height, gender, age);
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  backgroundColor: gender == 'Male'
                      ? ColorManager.textGreenColor
                      : ColorManager.textYellowColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: SizedBox(
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String getBmiCategory(double bmi) {
  if (bmi < 18.5) return "Underweight";
  if (bmi < 25) return "Normal";
  if (bmi < 30) return "Overweight";
  return "Obese";
}

double calculateBMI(int weight, int height) {
  return weight / ((height / 100) * (height / 100));
}

String getHealthyWeightRange(int height) {
  double h = height / 100;

  // Normal BMI range = 18.5 to 24.9
  double minWeight = 18.5 * h * h;
  double maxWeight = 24.9 * h * h;

  return "${minWeight.toStringAsFixed(1)} kg - ${maxWeight.toStringAsFixed(1)} kg";
}
