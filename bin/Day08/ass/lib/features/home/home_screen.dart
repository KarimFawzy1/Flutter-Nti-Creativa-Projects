import 'package:ass/features/home/widgets/height_slider.dart';
import 'package:flutter/material.dart';
import 'package:ass/core/bar.dart';
import 'package:ass/core/color_manager.dart';
import 'package:ass/features/home/widgets/weight_age_tile.dart';
import 'package:ass/cubit/logic.dart';
import 'package:ass/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ass/core/bmi_functions.dart';
import 'package:ass/features/home/widgets/show_bmi_popup.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final BmiCubit bmiCubit = context.read<BmiCubit>();
    final args = ModalRoute.of(context)?.settings.arguments as Map?;
    if (args != null && args['gender'] != null) {
      bmiCubit.selectGender(gender: args['gender']);
    }
    return BlocBuilder<BmiCubit, CalculateBmiState>(
      builder: (context, state) {
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
                      color: bmiCubit.genderName == 'Male'
                          ? ColorManager.textGreenColor
                          : ColorManager.textYellowColor,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    WeightAgeTile(
                      label: "Weight (kg)",
                      value: bmiCubit.weight.toDouble(),
                      onAdd: () {
                        bmiCubit.increaceWeight();
                      },
                      onRemove: () {
                        bmiCubit.decreaceWeight();
                      },
                    ),
                    WeightAgeTile(
                      label: "Age",
                      value: bmiCubit.age.toDouble(),
                      onAdd: () {
                        bmiCubit.increaceAge();
                      },
                      onRemove: () {
                        bmiCubit.decreaceAge();
                      },
                    ),
                  ],
                ),
                SizedBox(height: 30),
                HeightSlider(height: bmiCubit.height),
                SizedBox(height: 40),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      double bmi = calculateBMI(
                        bmiCubit.weight,
                        bmiCubit.height,
                      );
                      showBmiPopup(
                        context,
                        bmi,
                        bmiCubit.weight,
                        bmiCubit.height,
                        bmiCubit.age,
                        bmiCubit.genderName, // pass gender explicitly
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      backgroundColor: bmiCubit.genderName == 'Male'
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
      },
    );
  }
}
