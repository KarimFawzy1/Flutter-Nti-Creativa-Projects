import 'package:ass/core/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:ruler_slider/ruler_slider.dart';
import 'package:ass/cubit/logic.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ass/cubit/state.dart';
import 'package:ass/core/width_height.dart';

class HeightSlider extends StatelessWidget {
  const HeightSlider({super.key, required this.height});
  final int height;

  @override
  Widget build(BuildContext context) {
    WidthHeight.init(context);
    final BmiCubit bmiCubit = context.read<BmiCubit>();
    return BlocBuilder<BmiCubit, CalculateBmiState>(
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.symmetric(
            horizontal: WidthHeight.screenWidth * 0.045,
          ),
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
                  fontSize: WidthHeight.screenWidth * 0.044,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "$height",
                style: TextStyle(
                  color: bmiCubit.genderName == 'Male'
                      ? ColorManager.textGreenColor
                      : ColorManager.textYellowColor,
                  fontSize: WidthHeight.screenWidth * 0.13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RulerSlider(
                showFixedLabel: false,
                showBottomLabels: false,
                selectedBarColor: ColorManager.textSecondaryColor,
                fixedBarWidth: WidthHeight.screenWidth * 0.008,
                fixedBarColor: bmiCubit.genderName == 'Male'
                    ? ColorManager.textGreenColor
                    : ColorManager.textYellowColor,
                // rulerHeight: 78,
                rulerHeight: WidthHeight.screenHeight * 0.1,
                fixedBarHeight: WidthHeight.screenHeight * 0.0575,
                majorTickHeight: WidthHeight.screenHeight * 0.025,
                minorTickHeight: WidthHeight.screenHeight * 0.0125,
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
