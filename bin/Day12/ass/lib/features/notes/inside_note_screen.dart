import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/core/color_manager.dart';
import 'package:task1/core/models/note_model.dart';
import 'package:task1/features/cubit/logic.dart';
import 'package:task1/features/home/widgets/small_button.dart';
import 'package:task1/features/notes/widgets/toolbar_icon.dart';

class NoteScreen extends StatelessWidget {
  final NoteModel? note;
  const NoteScreen({super.key, this.note});

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController(
      text: note != null ? note!.title : '',
    );
    final contentController = TextEditingController(
      text: note != null ? note!.content : '',
    );
    final noteCubit = context.read<NoteCubit>();

    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 20.w, top: 20.w),
          width: 50.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: ColorManager.backgroundSecondary,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: ColorManager.whiteText,
            ),
            iconSize: 24.sp,
          ),
        ),
        actions: [
          SmallButton(icon: Icons.visibility_outlined, onPressed: () {}),
          SmallButton(
            icon: Icons.save_outlined,
            onPressed: () {
              final title = titleController.text.trim();
              final content = contentController.text.trim();
              if (title.isEmpty && content.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Cannot save an empty note."),
                    backgroundColor: Colors.red,
                  ),
                );
                return;
              }
              // decide id and color based on whether this is a new or existing note
              final isNewNote = note == null;
              // Hive integer keys must be in the range 0 - 0xFFFFFFFF
              const maxHiveKey = 0xFFFFFFFF;
              final id = isNewNote
                  ? DateTime.now().millisecondsSinceEpoch % (maxHiveKey + 1)
                  : note!.id;
              final color = isNewNote
                  ? ColorManager.noteColors[Random().nextInt(
                      ColorManager.noteColors.length,
                    )]
                  : note!.color;
              final updatedNote = NoteModel(
                id: id,
                title: title,
                content: content,
                colorValue: color.toARGB32(),
              );
              if (isNewNote) {
                noteCubit.addNote(updatedNote);
              } else {
                noteCubit.updateNote(updatedNote);
              }
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  TextField(
                    controller: titleController,
                    style: TextStyle(
                      color: ColorManager.textSecondary,
                      fontSize: 48.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    textInputAction: TextInputAction.newline,
                    // maxLines: 1,
                    textAlign: TextAlign.left,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "Title",
                      hintStyle: TextStyle(
                        color: ColorManager.textSecondary,
                        fontSize: 48.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  TextField(
                    controller: contentController,
                    style: TextStyle(
                      color: ColorManager.textSecondary,
                      fontSize: 23.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    textInputAction: TextInputAction.newline,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "Type something...",
                      hintStyle: TextStyle(
                        color: ColorManager.textSecondary,
                        fontSize: 23.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            SizedBox(
              height: 30.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ToolbarIcon(icon: Icons.attach_file_outlined),
                  ToolbarIcon(icon: Icons.image_outlined),
                  ToolbarIcon(icon: Icons.format_bold_outlined),
                  ToolbarIcon(icon: Icons.format_italic_outlined),
                  ToolbarIcon(icon: Icons.format_underline_outlined),
                  ToolbarIcon(icon: Icons.format_align_left_outlined),
                  ToolbarIcon(icon: Icons.format_align_center_outlined),
                  ToolbarIcon(icon: Icons.format_align_right_outlined),
                  ToolbarIcon(icon: Icons.strikethrough_s_outlined),
                  ToolbarIcon(icon: Icons.code_outlined),
                  ToolbarIcon(icon: Icons.format_list_bulleted_outlined),
                  ToolbarIcon(icon: Icons.format_list_numbered_outlined),
                  ToolbarIcon(icon: Icons.check_box_outlined),
                ],
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
