import 'package:flutter/material.dart';
import 'package:task1/core/color_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/features/home/widgets/add_note_button.dart';
import 'package:task1/features/home/widgets/notes_container.dart';
import 'package:task1/features/home/widgets/small_button.dart';

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
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(bottom: 50.h),
          children: [
            NotesContainer(
              noteLabel:
                  "Book Review : The Design of Everyday Things by Don Norman",
              noteColor: ColorManager.secondary1,
            ),
            NotesContainer(
              noteLabel:
                  "Book Review : The Design of Everyday Things by Don Norman",
              noteColor: ColorManager.secondary2,
            ),
            NotesContainer(
              noteLabel:
                  "Book Review : The Design of Everyday Things by Don Norman",
              noteColor: ColorManager.secondary3,
            ),
            NotesContainer(
              noteLabel:
                  "Book Review : The Design of Everyday Things by Don Norman",
              noteColor: ColorManager.secondary4,
            ),
            NotesContainer(
              noteLabel:
                  "Book Review : The Design of Everyday Things by Don Norman",
              noteColor: ColorManager.secondary5,
            ),
            NotesContainer(
              noteLabel:
                  "Book Review : The Design of Everyday Things by Don Norman",
              noteColor: ColorManager.secondary6,
            ),
            NotesContainer(
              noteLabel:
                  "Book Review : The Design of Everyday Things by Don Norman",
              noteColor: ColorManager.secondary7,
            ),
          ],
        ),
      ),
    );
  }
}
