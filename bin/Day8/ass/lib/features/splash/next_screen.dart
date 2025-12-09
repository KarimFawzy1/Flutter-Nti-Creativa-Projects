import 'package:ass/core/color_manager.dart';
import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key, required this.selectedGender});

  final String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          if (selectedGender != null) {
            Navigator.pushReplacementNamed(
              context,
              '/home',
              arguments: {'gender': selectedGender},
            );
          }
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 20),
          backgroundColor: ColorManager.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: SizedBox(
          child: Text(
            'Continue',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
