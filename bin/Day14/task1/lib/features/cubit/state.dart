sealed class NameState {}

class InitialState extends NameState {}

class LoadingState extends NameState {}

class SuccessState extends NameState {
  final String name;
  SuccessState({required this.name});
}

class ErrorState extends NameState {
  final String errorMessage;
  ErrorState({required this.errorMessage});
}
