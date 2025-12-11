class student {
  String name;
  int age;
  double? grade;
  String? city;
  student({required this.name, required this.age, this.grade, this.city});
  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Grade: ${grade ?? "Not assigned"}");
    print("City: ${city ?? "Unknown"}");
  }
}
