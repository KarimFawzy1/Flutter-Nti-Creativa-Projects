import 'package:flutter_bloc/flutter_bloc.dart';
import 'state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  String email = '';
  String password = '';
  bool isCorrect = false;

  void onEmailChanged(String value) {
    email = value;
    _validateFields();
  }

  void onPasswordChanged(String value) {
    password = value;
    _validateFields();
  }

  void _validateFields() {
    String? emailError;
    String? passwordError;
    bool valid = true;

    if (!email.contains('@') || !email.contains('.com')) {
      emailError = 'Enter a valid email';
      valid = false;
    }

    if (password.length <= 4) {
      passwordError = 'Password must be more than 4 characters';
      valid = false;
    }

    isCorrect = valid;
    emit(
      LoginValidationState(
        emailError: emailError,
        passwordError: passwordError,
        isCorrect: isCorrect,
      ),
    );
  }

  void login() {
    // use the latest isCorrect from live validation
    if (!isCorrect) {
      emit(LoginError('Email or password is incorrect'));
      return;
    }
    emit(LoginSuccess()); // fake success
  }
}
