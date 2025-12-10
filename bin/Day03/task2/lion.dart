import 'animal.dart';

class Lion extends Animal {
  bool isWild;
  Lion({required super.name, required super.age, required this.isWild});
  void roar() {
    print("Lion $name is roaring");
  }
}
