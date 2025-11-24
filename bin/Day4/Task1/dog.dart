import 'pet.dart';
import 'walk.dart';

class Dog extends Pet with Walk {
  Dog({required super.name});
}
