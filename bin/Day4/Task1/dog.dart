import 'pet.dart';
import 'abilities.dart';

class Dog extends Pet with Walk {
  Dog({required super.name});
}
