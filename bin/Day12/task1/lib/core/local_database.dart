import 'package:hive_flutter/hive_flutter.dart';

class LocalDatabase {
  Box myBox = Hive.box('box1');

  Future<void> addData(String name) async {
    await myBox.put("name", name);
  }

  Future<dynamic> getData() async {
    return await myBox.get("name");
  }

  Future<void> deleteData() async {
    await myBox.delete("name");
  }
}
