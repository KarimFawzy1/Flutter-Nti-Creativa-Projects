import 'package:ass/core/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:ass/cubits/gender_selection/gender_selection_cubit.dart';
import 'package:ass/cubits/gender_selection/gender_selection_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenderSelection extends StatelessWidget {
  final String genderName;
  final IconData icon;
  final Image image;
  final VoidCallback onTap;

  const GenderSelection({
    super.key,
    required this.genderName,
    required this.icon,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final GenderSelectionCubit genderSelectionCubit = context
        .read<GenderSelectionCubit>();
    return BlocBuilder<GenderSelectionCubit, GenderSelectionState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            decoration: BoxDecoration(
              color: genderSelectionCubit.state.backgroundColor,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 5,
                  offset: Offset(3, 3),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  genderName,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    color: genderSelectionCubit.state.textColor,
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: 130,
                      height: 140,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.1),
                            blurRadius: 1,
                            offset: Offset(7, 7),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 42),
                          child: image,
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: genderName == 'Male'
                            ? ColorManager.maleColor
                            : ColorManager.femaleColor,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.15),
                            blurRadius: 1,
                            offset: Offset(4, 4),
                          ),
                        ],
                      ),
                      child: Icon(icon, color: Colors.white, size: 50),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
