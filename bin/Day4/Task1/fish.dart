import 'pet.dart';
import 'swim.dart';

class Fish extends Pet with Swim {
  Fish({required super.name});
}
