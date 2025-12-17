import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String content;

  @HiveField(3)
  final int colorValue;

  NoteModel({
    required this.id,
    required this.title,
    required this.content,
    required this.colorValue,
  });

  // Convenience getter for UI
  Color get color => Color(colorValue);
}

// NoteModel(
//   id: 1,
//   title: 'My Note',
//   content: 'Hello Hive',
//   colorValue: ColorManager.secondary3.value,
// );

// When you want to display the note:
// Color(note.colorValue)
