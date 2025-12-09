import 'package:ass/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ass/core/bmi_functions.dart';

class BmiCubit extends Cubit<CalculateBmiState> {
  BmiCubit() : super(CalculateBmiInitial());

  String genderName = "";
  int age = 22;
  int weight = 75;
  int height = 166;

  void selectGender({required String gender}) {
    genderName = gender;
    emit(SelectGenderState(genderName: genderName));
  }

  void increaceAge() {
    age++;

    emit(SelectAgeState(age: age));
  }

  void decreaceAge() {
    age--;

    emit(SelectAgeState(age: age));
  }

  void increaceWeight() {
    weight++;

    emit(SelectWeightState(weight: weight));
  }

  void decreaceWeight() {
    weight--;

    emit(SelectWeightState(weight: weight));
  }

  void selectHeight({required double heightValue}) {
    height = heightValue.toInt();

    emit(SelectheightState(height: height));
  }

  void calculateBmi() {
    double bmi = calculateBMI(weight, height);

    emit(
      BmiResultState(
        result: {
          'bmi': bmi,
          'weight': weight,
          'height': height,
          'age': age,
          'gender': genderName,
        },
      ),
    );
  }
}
