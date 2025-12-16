import 'package:hive_flutter/adapters.dart';

part 'person_model.g.dart';

@HiveType(typeId: 0)
class PersonModel1 {
  @HiveField(0)
  final String email;
  @HiveField(1)
  final String password;
  @HiveField(2)
  final String name;

  PersonModel1({
    required this.email,
    required this.password,
    required this.name,
  });
}
