String getBmiCategory(double bmi) {
  if (bmi < 18.5) return "Underweight";
  if (bmi < 25) return "Normal";
  if (bmi < 30) return "Overweight";
  return "Obese";
}

double calculateBMI(int weight, int height) {
  return weight / ((height / 100) * (height / 100));
}

String getHealthyWeightRange(int height) {
  double h = height / 100;

  // Normal BMI range = 18.5 to 24.9
  double minWeight = 18.5 * h * h;
  double maxWeight = 24.9 * h * h;

  return "${minWeight.toStringAsFixed(1)} kg - ${maxWeight.toStringAsFixed(1)} kg";
}
