import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/features/todo/cubit/state.dart';
import 'package:task1/features/todo/models/todo_model.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(TodoInitialState(todos: []));
  List<TodoModel> todos = [];
  void addTodo(TodoModel newTodo) {
    todos.add(newTodo);
    emit(TodoAddState(todos: List.from(todos)));
  }

  void toggleTodo(TodoModel todo) {
    todo.isDone = !todo.isDone;
    // todos.remove(todo);
    emit(TodoToggleState(todos: List.from(todos)));
  }
}
