import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/core/colors_manager.dart';
import 'package:task1/features/todo/cubit/logic.dart';
import 'package:task1/features/todo/cubit/state.dart';
import 'package:task1/features/todo/models/todo_model.dart';

class AddTodoTextField extends StatelessWidget {
  const AddTodoTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final todoCubit = context.read<TodoCubit>();
    final textController = TextEditingController();
    return BlocBuilder<TodoCubit, TodoState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: textController,
                    decoration: InputDecoration(
                      fillColor: ColorsManager.secondary,
                      filled: true,
                      hintText: "Write A task...",
                      hintStyle: TextStyle(
                        color: ColorsManager.primary,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    todoCubit.addTodo(TodoModel(title: textController.text));
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
