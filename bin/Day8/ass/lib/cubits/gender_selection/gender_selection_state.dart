import 'package:flutter/material.dart';

sealed class GenderSelectionState {
  // final String? gender;
  final Color backgroundColor;
  final Color textColor;
  GenderSelectionState({
    required this.backgroundColor,
    required this.textColor,
  });
}

class GenderInitial extends GenderSelectionState {
  GenderInitial({required super.backgroundColor, required super.textColor});
}

class GenderMale extends GenderSelectionState {
  GenderMale({required super.backgroundColor, required super.textColor});
}

class GenderFemale extends GenderSelectionState {
  GenderFemale({required super.backgroundColor, required super.textColor});
}
