import 'package:ass/core/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:ass/cubit/logic.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ass/core/width_height.dart';

class NextScreenButton extends StatelessWidget {
  const NextScreenButton({super.key});

  @override
  Widget build(BuildContext context) {
    WidthHeight.init(context);
    final BmiCubit bmiCubit = context.read<BmiCubit>();
    return Container(
      margin: EdgeInsets.symmetric(horizontal: WidthHeight.screenWidth * 0.1),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          if (bmiCubit.genderName.isNotEmpty) {
            Navigator.pushNamed(
              context,
              '/home',
              arguments: {'gender': bmiCubit.genderName},
            );
          }
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            vertical: WidthHeight.screenHeight * 0.025,
          ),
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
              //132.7*46
              fontSize: WidthHeight.screenWidth * 0.084,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
