import 'package:hive_flutter/adapters.dart';

part 'person_model.g.dart';

@HiveType(typeId: 0)
class PersonModel {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int age;

  PersonModel({required this.name, required this.age});
}
