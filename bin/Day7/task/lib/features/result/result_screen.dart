import 'package:flutter/material.dart';
import 'package:task/core/bar.dart';
import 'package:task/core/colors_manager.dart';
import 'package:task/core/text_styles.dart';
import 'package:task/features/result/bmi_calc.dart';
import 'package:task/features/result/widgets/result_container.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final bmiResult = calculateBmi(
      gender: arguments['gender'],
      height: arguments['height'],
      weight: arguments['weight'],
      age: arguments['age'],
    );
    return Scaffold(
      backgroundColor: ColorsManager.primary,
      appBar: PreferredSize(preferredSize: Size.fromHeight(50), child: Bar()),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Your Result',
              style: TextStyles.text20.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 40,
              ),
            ),
          ),
          SizedBox(height: 20),
          ResultContainer(bmiResult: bmiResult),

          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: ColorsManager.secondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'Re-Calculate',
                  style: TextStyles.text20.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
