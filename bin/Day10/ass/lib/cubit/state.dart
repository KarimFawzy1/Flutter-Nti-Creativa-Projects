sealed class CalculateBmiState {}

final class CalculateBmiInitial extends CalculateBmiState {}

final class SelectGenderState extends CalculateBmiState {
  final String genderName;

  SelectGenderState({required this.genderName});
}

final class SelectAgeState extends CalculateBmiState {
  final int age;

  SelectAgeState({required this.age});
}

final class SelectWeightState extends CalculateBmiState {
  final int weight;

  SelectWeightState({required this.weight});
}

final class SelectheightState extends CalculateBmiState {
  final int height;

  SelectheightState({required this.height});
}

final class BmiResultState extends CalculateBmiState {
  final Map<String, dynamic> result;

  BmiResultState({required this.result});
}
