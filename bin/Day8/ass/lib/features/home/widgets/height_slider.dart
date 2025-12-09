import 'package:ass/core/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:ruler_slider/ruler_slider.dart';
import 'package:ass/cubit/logic.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ass/cubit/state.dart';

class HeightSlider extends StatelessWidget {
  const HeightSlider({super.key, required this.height});
  final int height;

  @override
  Widget build(BuildContext context) {
    final BmiCubit bmiCubit = context.read<BmiCubit>();
    return BlocBuilder<BmiCubit, CalculateBmiState>(
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 22),
          width: double.infinity,
          decoration: BoxDecoration(
            color: bmiCubit.genderName == 'Male'
                ? ColorManager.maleBackgroundColor
                : ColorManager.femaleBackgroundColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              Text(
                "Height (cm)",
                style: TextStyle(
                  color: ColorManager.textSecondaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "$height",
                style: TextStyle(
                  color: bmiCubit.genderName == 'Male'
                      ? ColorManager.textGreenColor
                      : ColorManager.textYellowColor,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RulerSlider(
                showFixedLabel: false,
                showBottomLabels: false,
                selectedBarColor: ColorManager.textSecondaryColor,
                fixedBarWidth: 3.5,
                fixedBarColor: bmiCubit.genderName == 'Male'
                    ? ColorManager.textGreenColor
                    : ColorManager.textYellowColor,
                rulerHeight: 78,
                fixedBarHeight: 45,
                majorTickHeight: 20,
                minorTickHeight: 10,
                minValue: 100,
                maxValue: 200,
                initialValue: height.toDouble(),
                onChanged: (value) {
                  bmiCubit.selectHeight(heightValue: value.toDouble());
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
