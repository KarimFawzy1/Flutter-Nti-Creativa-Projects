import 'package:hive_flutter/hive_flutter.dart';
import 'package:task1/features/home/models/person_model.dart';

class LocalDatabase {
  Box myBox = Hive.box('person1');

  Future<void> addPerson(PersonModel person) async {
    await myBox.put("person1", person);
  }

  Future<PersonModel> getPerson() async {
    return await myBox.get("person1");
  }

  Future<void> deletePerson() async {
    await myBox.delete("person1");
  }
}
