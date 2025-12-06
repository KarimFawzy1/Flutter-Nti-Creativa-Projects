import 'package:flutter/material.dart';
import 'package:task/core/text_styles.dart';

class ResultContainer extends StatelessWidget {
  const ResultContainer({super.key, required this.bmiResult});

  final Map<String, dynamic> bmiResult;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.grey.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Text(
              '${bmiResult['status']}',
              style: TextStyles.text20.copyWith(
                color: bmiResult['status'] == 'Underweight'
                    ? Colors.blue
                    : bmiResult['status'] == 'Normal'
                    ? Colors.green
                    : bmiResult['status'] == 'Overweight'
                    ? Colors.orange
                    : Colors.red,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 30),
            Text(
              '${bmiResult['bmi'].toStringAsFixed(1)}',
              style: TextStyles.text20.copyWith(
                color: Colors.white,
                fontSize: 64,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                textAlign: TextAlign.center,
                '${bmiResult['message']}',
                style: TextStyles.text20.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
