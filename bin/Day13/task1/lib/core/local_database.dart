// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:task1/core/models/note_model.dart';

// class LocalDatabase {
//   Box myBox = Hive.box('notes');

//   Future<void> addNote(NoteModel note) async {
//     await myBox.put(note.id, note);
//   }

//   Future<List<NoteModel>> getNotes() async {
//     return (myBox.values.toList()).cast<NoteModel>();
//   }

//   Future<void> deleteNote(int id) async {
//     await myBox.delete(id);
//   }

//   Future<void> clearNotes() async {
//     await myBox.clear();
//   }
// }
