import 'package:task1/core/note_model.dart';

sealed class NoteState {
  final List<NoteModel> notes;
  const NoteState({this.notes = const []});
}

class NoteInitial extends NoteState {
  const NoteInitial() : super();
}

class NotesLoading extends NoteState {
  const NotesLoading({super.notes});
}

class NotesLoaded extends NoteState {
  const NotesLoaded({super.notes});
}

class NotesError extends NoteState {
  final String message;
  const NotesError({super.notes, required this.message});
}
