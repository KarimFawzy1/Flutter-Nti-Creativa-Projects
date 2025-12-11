import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/core/colors_manager.dart';
import 'package:task1/features/todo/cubit/logic.dart';
import 'package:task1/features/todo/cubit/state.dart';
import 'package:task1/features/todo/models/todo_model.dart';

class CheckboxContainer extends StatelessWidget {
  final TodoModel todo;
  const CheckboxContainer({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    final todoCubit = context.read<TodoCubit>();
    return BlocListener<TodoCubit, TodoState>(
      listener: (context, state) {
        if (state is TodoToggleState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Task toggled"),
              backgroundColor: Colors.green,
            ),
          );
        }
      },
      child: BlocBuilder<TodoCubit, TodoState>(
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(
              color: ColorsManager.secondary,
              borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.only(left: 20, right: 20, top: 18),
            child: Row(
              children: [
                Checkbox(
                  value: todo.isDone,
                  onChanged: (v) => todoCubit.toggleTodo(todo),
                ),
                const SizedBox(width: 16),
                Text(
                  todo.title,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: ColorsManager.primary,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
