import 'package:task1/features/todo/models/todo_model.dart';

sealed class TodoState {
  final List<TodoModel> todos;

  TodoState({required this.todos});
}

class TodoInitialState extends TodoState {
  TodoInitialState({required super.todos});
}

class TodoAddState extends TodoState {
  TodoAddState({required super.todos});
}

class TodoToggleState extends TodoState {
  TodoToggleState({required super.todos});
}
