import 'package:ass/core/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:ass/cubit/logic.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ass/cubit/state.dart';
import 'package:ass/core/width_height.dart';

class WeightAgeTile extends StatelessWidget {
  final String label;
  final double value;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  const WeightAgeTile({
    super.key,
    required this.label,
    required this.value,
    required this.onAdd,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    WidthHeight.init(context);
    final BmiCubit bmiCubit = context.read<BmiCubit>();
    return BlocBuilder<BmiCubit, CalculateBmiState>(
      builder: (context, state) {
        return Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: WidthHeight.screenWidth * 0.02,
            ),
            decoration: BoxDecoration(
              color: bmiCubit.genderName == 'Male'
                  ? ColorManager.maleBackgroundColor
                  : ColorManager.femaleBackgroundColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: WidthHeight.screenWidth * 0.0428,
                    fontWeight: FontWeight.w500,
                    color: ColorManager.textSecondaryColor,
                  ),
                ),
                Text(
                  '${value.toInt()}',
                  style: TextStyle(
                    fontSize: WidthHeight.screenWidth * 0.128,
                    fontWeight: FontWeight.bold,
                    color: bmiCubit.genderName == 'Male'
                        ? ColorManager.textGreenColor
                        : ColorManager.textYellowColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: WidthHeight.screenHeight * 0.02,
                    bottom: WidthHeight.screenHeight * 0.02,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: onRemove,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: bmiCubit.genderName == 'Male'
                              ? ColorManager.maleBackgroundColor
                              : ColorManager.femaleBackgroundColor,
                          shape: const CircleBorder(),
                          elevation: 3,
                          shadowColor: Colors.black,
                        ),
                        child: Icon(
                          Icons.remove_rounded,
                          color: bmiCubit.genderName == 'Male'
                              ? ColorManager.darkGreenColor
                              : ColorManager.darkYellowColor,
                          size: WidthHeight.screenWidth * 0.083,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: onAdd,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: bmiCubit.genderName == 'Male'
                              ? ColorManager.maleBackgroundColor
                              : ColorManager.femaleBackgroundColor,
                          shape: const CircleBorder(),
                          elevation: 3,
                          shadowColor: Colors.black,
                        ),
                        child: Icon(
                          Icons.add_rounded,
                          color: bmiCubit.genderName == 'Male'
                              ? ColorManager.darkGreenColor
                              : ColorManager.darkYellowColor,
                          size: WidthHeight.screenWidth * 0.083,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
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
