import 'package:ass/core/bar.dart';
import 'package:ass/features/splash/widgets/gender_selection.dart';
import 'package:ass/features/splash/widgets/next_screen_button.dart';
import 'package:flutter/material.dart';
import 'package:ass/core/color_manager.dart';
import 'package:ass/cubit/logic.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ass/cubit/state.dart';
import 'package:ass/core/width_height.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidthHeight.init(context);
    final BmiCubit bmiCubit = context.read<BmiCubit>();
    return BlocBuilder<BmiCubit, CalculateBmiState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(WidthHeight.screenHeight * 0.18),
            child: Bar(),
          ),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  'Please choose your gender',
                  style: TextStyle(
                    fontSize: WidthHeight.screenWidth * 0.064,
                    fontWeight: FontWeight.w500,
                    color: ColorManager.blackColor,
                  ),
                ),
                SizedBox(height: WidthHeight.screenHeight * 0.035),
                Column(
                  children: [
                    GenderSelection(
                      genderName: "Male",
                      icon: Icons.male,
                      image: Image.asset(
                        'assets/male.png',
                        width: 111.w,
                        height: 94.h,
                        fit: BoxFit.cover,
                      ),
                      onTap: () => bmiCubit.selectGender(gender: "Male"),
                    ),
                    SizedBox(height: WidthHeight.screenHeight * 0.035),
                    GenderSelection(
                      genderName: "Female",
                      icon: Icons.female,
                      image: Image.asset(
                        'assets/female.png',
                        width: 111.w,
                        height: 105.h,
                        fit: BoxFit.cover,
                      ),
                      onTap: () => bmiCubit.selectGender(gender: "Female"),
                    ),
                  ],
                ),
                SizedBox(height: WidthHeight.screenHeight * 0.055),
                NextScreenButton(),
              ],
            ),
          ),
        );
      },
    );
  }
}
