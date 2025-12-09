import 'package:ass/core/bar.dart';
import 'package:ass/features/splash/gender_selection.dart';
import 'package:ass/features/splash/next_screen_button.dart';
import 'package:flutter/material.dart';
import 'package:ass/core/color_manager.dart';
import 'package:ass/cubit/logic.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ass/cubit/state.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final BmiCubit bmiCubit = context.read<BmiCubit>();
    return BlocBuilder<BmiCubit, CalculateBmiState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(150),
            child: Bar(),
          ),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Please choose your gender',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: ColorManager.blackColor,
                  ),
                ),
                SizedBox(height: 30),
                Column(
                  children: [
                    GenderSelection(
                      genderName: "Male",
                      icon: Icons.male,
                      image: Image.asset('assets/male.png'),
                      onTap: () => bmiCubit.selectGender(gender: "Male"),
                    ),
                    SizedBox(height: 30),
                    GenderSelection(
                      genderName: "Female",
                      icon: Icons.female,
                      image: Image.asset('assets/female.png'),
                      onTap: () => bmiCubit.selectGender(gender: "Female"),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                NextScreenButton(),
              ],
            ),
          ),
        );
      },
    );
  }
}
