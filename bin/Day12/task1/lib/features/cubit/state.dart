import 'package:task1/features/home/models/person_model.dart';

sealed class PersonState {}

class InitialState extends PersonState {}

class LoadingState extends PersonState {}

class SuccessState extends PersonState {
  final PersonModel person;
  SuccessState({required this.person});
}

class ErrorState extends PersonState {
  final String errorMessage;
  ErrorState({required this.errorMessage});
}
