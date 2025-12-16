import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/features/cubit/state.dart';
import 'package:task1/core/local_database.dart';
import 'package:task1/features/login/models/person_model.dart';

class PersonCubit extends Cubit<PersonState> {
  PersonCubit() : super(InitialState());

  final LocalDatabase localDatabase = LocalDatabase();

  Future<void> addPerson(PersonModel1 person) async {
    emit(LoadingState());
    try {
      await localDatabase.addPerson(person);
      emit(SuccessState(person: person));
    } catch (e) {
      emit(ErrorState(errorMessage: e.toString()));
    }
  }

  Future<void> deletePerson() async {
    emit(LoadingState());
    try {
      await localDatabase.deletePerson();
      emit(
        SuccessState(
          person: PersonModel1(email: '', password: '', name: ''),
        ),
      );
    } catch (e) {
      emit(ErrorState(errorMessage: e.toString()));
    }
  }

  Future<void> getPerson() async {
    emit(LoadingState());
    try {
      final person = await localDatabase.getPerson();
      emit(SuccessState(person: person));
    } catch (e) {
      emit(ErrorState(errorMessage: e.toString()));
    }
  }

  Future<bool> validateForm(
    GlobalKey<FormState> formKey,
    TextEditingController emailController,
    TextEditingController passwordController,
    TextEditingController nameController,
  ) async {
    final email = emailController.text.trim();
    final password = passwordController.text;
    final name = nameController.text.trim();

    if (!(email.contains('@') && email.contains('.com'))) {
      emit(
        ErrorState(errorMessage: 'Invalid email. Must contain "@" and ".com".'),
      );
      return false;
    }
    if (password.length < 6) {
      emit(ErrorState(errorMessage: 'Password must be at least 6 characters.'));
      return false;
    }
    if (name.isEmpty) {
      emit(ErrorState(errorMessage: 'Name cannot be empty.'));
      return false;
    }

    if (formKey.currentState!.validate()) {
      emit(LoadingState());
      try {
        await addPerson(
          PersonModel1(email: email, password: password, name: name),
        );
        return true;
      } catch (e) {
        emit(ErrorState(errorMessage: e.toString()));
        return false;
      }
    }
    return false;
  }
}
