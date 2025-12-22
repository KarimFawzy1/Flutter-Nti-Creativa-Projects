import 'package:task1/core/firebase/models/user_model.dart';

sealed class UserState {}

class UserInitial extends UserState {
  UserInitial() : super();
}

class UsersLoading extends UserState {
  UsersLoading() : super();
}

class UsersLoaded extends UserState {
  final UserModel user;
  UsersLoaded({required this.user}) : super();
}

class UsersError extends UserState {
  final String message;
  UsersError({required this.message}) : super();
}
