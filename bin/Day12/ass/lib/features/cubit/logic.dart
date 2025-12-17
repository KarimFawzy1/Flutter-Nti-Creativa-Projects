import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/features/cubit/state.dart';
import 'package:task1/core/models/note_model.dart';
import 'package:task1/core/local_database.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(const NoteInitial());

  LocalDatabase localDatabase = LocalDatabase();

  // load notes from local database when the app is opened
  Future<void> loadNotes() async {
    try {
      emit(const NotesLoading());
      final notes = await localDatabase.getNotes();
      emit(NotesLoaded(notes: notes));
    } catch (e) {
      emit(NotesError(message: 'Failed to load notes: $e'));
    }
  }

  Future<void> addNote(NoteModel note) async {
    try {
      await localDatabase.addNote(note);
      final notes = await localDatabase.getNotes();
      emit(NotesLoaded(notes: notes));
    } catch (e) {
      emit(NotesError(message: 'Failed to add note: $e'));
    }
  }

  Future<void> deleteNote(int id) async {
    try {
      await localDatabase.deleteNote(id);
      final notes = await localDatabase.getNotes();
      emit(NotesLoaded(notes: notes));
    } catch (e) {
      emit(NotesError(message: 'Failed to delete note: $e'));
    }
  }

  Future<void> updateNote(NoteModel updated) async {
    try {
      await localDatabase.addNote(updated);
      final notes = await localDatabase.getNotes();
      emit(NotesLoaded(notes: notes));
    } catch (e) {
      emit(NotesError(message: 'Failed to update note: $e'));
    }
  }

  Future<void> clearNotes() async {
    await localDatabase.clearNotes();
    final notes = await localDatabase.getNotes();
    emit(NotesLoaded(notes: notes));
  }
}
