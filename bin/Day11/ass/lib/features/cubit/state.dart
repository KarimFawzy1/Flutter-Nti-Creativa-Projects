import 'package:task1/core/note_model.dart';

sealed class NoteState {
  final List<NoteModel> notes;
  const NoteState({this.notes = const []});
}

class NoteInitial extends NoteState {
  const NoteInitial() : super();
}

/// when you are loading notes (e.g. from local DB)
class NotesLoading extends NoteState {
  const NotesLoading({super.notes});
}

/// when notes are successfully loaded / updated
class NotesLoaded extends NoteState {
  const NotesLoaded({super.notes});
}

class NotesError extends NoteState {
  final String message;
  const NotesError({super.notes, required this.message});
}
