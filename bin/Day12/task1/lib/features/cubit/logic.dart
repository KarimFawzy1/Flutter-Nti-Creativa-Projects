import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/features/cubit/state.dart';
import 'package:task1/core/local_database.dart';
import 'package:task1/features/home/models/person_model.dart';

class PersonCubit extends Cubit<PersonState> {
  PersonCubit() : super(InitialState());

  final LocalDatabase localDatabase = LocalDatabase();

  Future<void> addPerson(PersonModel person) async {
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
      emit(SuccessState(person: PersonModel(name: '', age: 0)));
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
}
