import 'package:ass/core/color_manager.dart';
import 'package:flutter/material.dart';

class WeightAgeTile extends StatelessWidget {
  final String label;
  final double value;
  final VoidCallback onAdd;
  final VoidCallback onRemove;
  final String? selectedGender;

  const WeightAgeTile({
    super.key,
    required this.label,
    required this.value,
    required this.onAdd,
    required this.onRemove,
    required this.selectedGender,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: selectedGender == 'Male'
              ? ColorManager.maleBackgroundColor
              : ColorManager.femaleBackgroundColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: ColorManager.textSecondaryColor,
              ),
            ),
            Text(
              '${value.toInt()}',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: selectedGender == 'Male'
                    ? ColorManager.textGreenColor
                    : ColorManager.textYellowColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: onRemove,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedGender == 'Male'
                            ? ColorManager.maleBackgroundColor
                            : ColorManager.femaleBackgroundColor,
                        shape: const CircleBorder(),
                        elevation: 3,
                        shadowColor: Colors.black,
                      ),
                      child: Icon(
                        Icons.remove_rounded,
                        color: selectedGender == 'Male'
                            ? ColorManager.darkGreenColor
                            : ColorManager.darkYellowColor,
                        size: 32,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: onAdd,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedGender == 'Male'
                            ? ColorManager.maleBackgroundColor
                            : ColorManager.femaleBackgroundColor,
                        shape: const CircleBorder(),
                        elevation: 3,
                        shadowColor: Colors.black,
                      ),
                      child: Icon(
                        Icons.add_rounded,
                        color: selectedGender == 'Male'
                            ? ColorManager.darkGreenColor
                            : ColorManager.darkYellowColor,
                        size: 32,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
