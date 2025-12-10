import 'animal.dart';

class Elephant extends Animal {
  int tuskLength;
  Elephant({required super.name, required super.age, required this.tuskLength});
  void sparyWater() {
    print("Elephant $name is spraying water");
  }
}
