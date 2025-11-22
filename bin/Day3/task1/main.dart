import 'student.dart';
import 'bankaccount.dart';

void main() {
  student student1 = student(name: "Ali", age: 20, grade: 90, city: "Cairo");
  student1.displayInfo();
  print('=' * 60);

  bankaccount bankaccount1 = bankaccount();
  bankaccount1.deposit = 100;
  bankaccount1.withdraw = 50;
  print(bankaccount1.balance);
}
