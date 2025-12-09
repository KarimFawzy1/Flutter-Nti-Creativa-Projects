import 'package:flutter_bloc/flutter_bloc.dart';
import 'gender_selection_state.dart';
import 'package:ass/core/color_manager.dart';

class GenderSelectionCubit extends Cubit<GenderSelectionState> {
  GenderSelectionCubit()
    : super(
        GenderInitial(
          backgroundColor: ColorManager.unselectedBackgroundColor,
          textColor: ColorManager.unselectedTextColor,
        ),
      );

  void selectGender(String gender) {
    if (gender == 'Male') {
      emit(
        GenderMale(
          backgroundColor: ColorManager.maleBackgroundColor,
          textColor: ColorManager.textGreenColor,
        ),
      );
    } else if (gender == 'Female') {
      emit(
        GenderFemale(
          backgroundColor: ColorManager.femaleBackgroundColor,
          textColor: ColorManager.textYellowColor,
        ),
      );
    } else {
      emit(
        GenderInitial(
          backgroundColor: ColorManager.unselectedBackgroundColor,
          textColor: ColorManager.unselectedTextColor,
        ),
      );
    }
  }
}
