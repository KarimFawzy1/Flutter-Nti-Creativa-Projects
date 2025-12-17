import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/core/color_manager.dart';
import 'package:task1/core/note_model.dart';
import 'package:task1/features/cubit/logic.dart';
import 'package:task1/features/cubit/state.dart';
import 'package:task1/features/home/widgets/add_note_button.dart';
import 'package:task1/features/home/widgets/notes_container.dart';
import 'package:task1/features/home/widgets/small_button.dart';
import 'package:task1/features/notes/inside_note_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AddNoteButton(),
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(top: 20.w),
          child: Text(
            "Notes",
            style: TextStyle(
              color: ColorManager.whiteText,
              fontSize: 43,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        iconTheme: IconThemeData(color: ColorManager.whiteText),
        actions: [
          SmallButton(icon: Icons.search, onPressed: () {}),
          SmallButton(icon: Icons.info_outline_rounded, onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 28.0),
        child: BlocBuilder<NoteCubit, NoteState>(
          builder: (context, state) {
            if (state is NotesLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is NotesError) {
              return Center(
                child: Text(
                  state.message,
                  style: TextStyle(color: Colors.red, fontSize: 18.sp),
                  textAlign: TextAlign.center,
                ),
              );
            }
            final List<NoteModel> notes = state.notes;
            if (notes.isEmpty) {
              return Center(
                child: Text(
                  'No notes yet.\nTap the + button to add one.',
                  style: TextStyle(
                    color: ColorManager.whiteText,
                    fontSize: 18.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            }
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.only(bottom: 50.h),
              itemCount: notes.length,
              itemBuilder: (context, index) {
                final note = notes[index];
                return NotesContainer(
                  noteLabel: note.title,
                  noteColor: note.color,
                  onDelete: () {
                    context.read<NoteCubit>().deleteNote(note.id);
                  },
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => NoteScreen(note: note)),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
