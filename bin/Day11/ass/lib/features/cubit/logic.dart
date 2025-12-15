import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/features/cubit/state.dart';
import 'package:task1/core/note_model.dart';
// import 'package:task1/core/local_database.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(const NoteInitial());

  void addNote(NoteModel note) {
    try {
      // copy current list and add the new note
      final updatedNotes = List<NoteModel>.from(state.notes)..add(note);
      emit(NotesLoaded(notes: updatedNotes));
    } catch (e) {
      emit(NotesError(notes: state.notes, message: 'Failed to add note: $e'));
    }
  }

  void deleteNote(int id) {
    try {
      final updatedNotes = state.notes.where((note) => note.id != id).toList();
      emit(NotesLoaded(notes: updatedNotes));
    } catch (e) {
      emit(
        NotesError(notes: state.notes, message: 'Failed to delete note: $e'),
      );
    }
  }

  void updateNote(NoteModel updated) {
    try {
      final updatedNotes = state.notes
          .map((note) => note.id == updated.id ? updated : note)
          .toList();
      emit(NotesLoaded(notes: updatedNotes));
    } catch (e) {
      emit(
        NotesError(notes: state.notes, message: 'Failed to update note: $e'),
      );
    }
  }

  void clearNotes() {
    emit(const NotesLoaded(notes: []));
  }
}
