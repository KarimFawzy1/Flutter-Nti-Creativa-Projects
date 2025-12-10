void main() {
  // Task 1
  String pass = "Nti-Cu@2o23";
  int age = 30;
  String job = "Software Engineer";
  bool male = true;
  double score = 95.5;
  print("Password: $pass");
  print("Age: $age");
  print("Job: $job");
  print("Male: $male");
  print("Score: $score");

  // Task 2
  int temp = 25;
  if (temp > 30) {
    print("It's a hot");
  } else if (temp <= 30 && temp >= 15) {
    print("Nice weather");
  } else {
    print("It's Cold");
  }

  // Task 3
  String opr = '+';
  switch (opr) {
    case '+':
      print("Addition");
    case '-':
      print("Subtraction");
    default:
  }

  // Task 4
  for (int i = 1; i < 21; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  // Task 5
  int sum = 0;
  int i = 1;
  while (i <= 50) {
    sum += i;
    i++;
  }
  print(sum);

  // Task 6
  String c1 = 'world';
  String res = '';
  // print c1 in reverse in for loop
  for (int i = c1.length - 1; i >= 0; i--) {
    res += c1[i];
  }
  print(res);
}
