import 'package:ass/core/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:ass/cubit/logic.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:ass/cubit/state.dart';

class NextScreenButton extends StatelessWidget {
  const NextScreenButton({super.key});

  @override
  Widget build(BuildContext context) {
    final BmiCubit bmiCubit = context.read<BmiCubit>();
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          if (bmiCubit.genderName.isNotEmpty) {
            Navigator.pushReplacementNamed(
              context,
              '/home',
              arguments: {'gender': bmiCubit.genderName},
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
