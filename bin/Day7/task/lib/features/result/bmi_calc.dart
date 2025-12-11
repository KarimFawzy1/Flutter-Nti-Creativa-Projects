Map<String, dynamic> calculateBmi({
  required String? gender,
  required double height,
  required double weight,
  required double age,
}) {
  final heightInMeters = height / 100;
  final bmi = weight / (heightInMeters * heightInMeters);

  String status;
  String message;

  if (bmi < 18.5) {
    status = "Underweight";
    message = "You are underweight. Try to maintain a healthier diet.";
  } else if (bmi >= 18.5 && bmi < 25) {
    status = "Normal";
    message = "You Have a Normal Body Weight, Good Job.";
  } else if (bmi >= 25 && bmi < 30) {
    status = "Overweight";
    message = "You are slightly overweight. Consider improving your lifestyle.";
  } else {
    status = "Obese";
    message =
        "You are obese. It is recommended to take action for your health.";
  }

  return {
    'gender': gender,
    'height': height,
    'weight': weight,
    'age': age,
    'bmi': bmi,
    'status': status,
    'message': message,
  };
}
