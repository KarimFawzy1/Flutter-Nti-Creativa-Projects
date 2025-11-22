void main() {
  List<int> numbers = [1, 2, 3, 4];
  print(numbers[0]);
  print(numbers[numbers.length - 1]);

  List<String> names = ["ali", "omar", "sara"];
  names.add("mona");
  names.remove("omar");
  names.removeAt(0);
  print(names);

  List<int> numbers2 = [1, 1, 2, 3, 5, 5];
  Set<int> n = numbers2.toSet();
  print(n);
  print('=' * 60);

  Map<String, dynamic> student = {
    "name": "ali",
    "age": 20,
    "uni": "Nile",
  };
  print(student["name"]);
  print(student["age"]);
  print(student["uni"]);
  student.addAll({"city": "cairo"});
  print(student["city"]);
  print(student.keys);
  print('=' * 60);

  var products = {
    "laptop": 1000,
    "phone": 500,
    "tablet": 300,
    "mouse": 100,
    "keyboard": 200,
    "monitor": 400
  };
  int max = 0;
  for (var product in products.values) {
    if (product > max) {
      max = product;
    }
  }
  print(max);
  print('=' * 60);

  // 1) function that take your your name , age , and display it.
  void displayInfo(String name, int age) {
    print("Name: $name");
    print("Age: $age");
  }

  displayInfo("ali", 20);
  print('=' * 60);

  // 2) Write a function printEvenNumbers that takes a List of numbers as prametar and prints all the even numbers.
  void printEvenNumbers(List<int> numbers) {
    for (int num in numbers) {
      if (num % 2 == 0) {
        print(num);
      }
    }
  }

  printEvenNumbers([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
  print('=' * 60);

//   applay (Arrow Function Anonymous Function, where)
// 1) var names = ["Ali", "Omar", "Ahmed", "Sara", "Anwar"); return the elemnts that only start with (A) .
  List<String> namess = ["Ali", "Omar", "Ahmed", "Sara", "Anwar"];
  var namesss = namess.where((name) => name.startsWith("A"));
  print(namesss.toList());

// 2)var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]; return numbers that grater than (5).
  List<int> numberss = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var numbersss = numberss.where((number) => number > 5);
  print(numbersss.toList());

// 3) var students = Return the names Of only the passed students
  var passedStudents = [];
  List<Map<String, dynamic>> students = [
    {"name": "Ali", "score": 45},
    {"name": "Omar", "score": 40},
    {"name": "Ahmed", "score": 60},
    {"name": "Sara", "score": 70},
    {"name": "Anwar", "score": 80}
  ];
  for (var student in students) {
    if (student["score"] > 50) {
      passedStudents.add(student["name"]);
    }
  }
  print(passedStudents.toList());
}
