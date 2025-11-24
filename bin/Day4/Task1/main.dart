import 'dog.dart';
import 'bird.dart';
import 'fish.dart';

void main() {
  Dog g = Dog(name: "Rex");
  Bird b = Bird(name: "Tweety");
  Fish f = Fish(name: "Nemo");
  g.walking("Rex");
  b.flying("Tweety");
  f.swimming("Nemo");
}
