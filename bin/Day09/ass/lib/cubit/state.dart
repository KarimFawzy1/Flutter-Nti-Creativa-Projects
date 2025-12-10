abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginError extends LoginState {
  final String message;
  LoginError(this.message);
}

class LoginValidationState extends LoginState {
  final String? emailError;
  final String? passwordError;
  final bool isCorrect;

  LoginValidationState({
    this.emailError,
    this.passwordError,
    required this.isCorrect,
  });
}
