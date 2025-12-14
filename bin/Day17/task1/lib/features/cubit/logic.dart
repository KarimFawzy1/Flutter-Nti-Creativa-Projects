import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/features/cubit/state.dart';
import 'package:task1/core/local_database.dart';

class NameCubit extends Cubit<NameState> {
  NameCubit() : super(InitialState());

  final LocalDatabase localDatabase = LocalDatabase();

  Future<void> addName(String name) async {
    emit(LoadingState());
    try {
      await localDatabase.addData(name);
      emit(SuccessState(name: name));
    } catch (e) {
      emit(ErrorState(errorMessage: e.toString()));
    }
  }

  Future<void> deleteName() async {
    emit(LoadingState());
    try {
      await localDatabase.deleteData();
      emit(SuccessState(name: ''));
    } catch (e) {
      emit(ErrorState(errorMessage: e.toString()));
    }
  }

  Future<void> getName() async {
    emit(LoadingState());
    try {
      final name = await localDatabase.getData();
      emit(SuccessState(name: name.toString()));
    } catch (e) {
      emit(ErrorState(errorMessage: e.toString()));
    }
  }
}
