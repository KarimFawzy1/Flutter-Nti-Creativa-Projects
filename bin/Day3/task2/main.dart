import 'lion.dart';
import 'elephant.dart';

void main() {
  Lion lion = Lion(name: "Semba", age: 5, isWild: true);
  Elephant elephant = Elephant(name: "Bot", age: 10, tuskLength: 10);

  lion.roar();
  lion.eat();
  print('=' * 60);
  elephant.sparyWater();
  elephant.eat();
}
