import 'package:hive_flutter/hive_flutter.dart';
import 'package:task1/features/login/models/person_model.dart';

class LocalDatabase {
  Box myBox = Hive.box('person2');

  Future<void> addPerson(PersonModel1 person) async {
    await myBox.put("person1", person);
  }

  Future<PersonModel1> getPerson() async {
    return await myBox.get("person1");
  }

  Future<void> deletePerson() async {
    await myBox.delete("person1");
  }
}
