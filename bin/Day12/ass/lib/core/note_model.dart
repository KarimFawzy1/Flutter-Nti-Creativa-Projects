import 'package:flutter/material.dart';

class NoteModel {
  final int id;
  final String title;
  final String content;
  final Color color;

  NoteModel({
    required this.id,
    required this.title,
    required this.content,
    required this.color,
  });
}
