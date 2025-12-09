import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/features/todo/cubit/logic.dart';
import 'package:task1/features/todo/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:task1/features/todo/widgets/checkbox_container.dart';
import 'package:task1/features/todo/widgets/add_todo_text_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final todoCubit = BlocProvider.of<TodoCubit>(context);
    return Scaffold(
      body: BlocListener<TodoCubit, TodoState>(
        listener: (context, state) {
          if (state is TodoAddState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Task added"),
                backgroundColor: Colors.green,
              ),
            );
          }
        },
        child: BlocBuilder<TodoCubit, TodoState>(
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                        CheckboxContainer(todo: todoCubit.todos[index]),
                    itemCount: todoCubit.todos.length,
                  ),
                ),
                Spacer(),
                AddTodoTextField(),
              ],
            );
          },
        ),
      ),
    );
  }
}
