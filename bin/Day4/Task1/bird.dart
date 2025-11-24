import 'pet.dart';
import 'fly.dart';

class Bird extends Pet with Fly {
  Bird({required super.name});
}
