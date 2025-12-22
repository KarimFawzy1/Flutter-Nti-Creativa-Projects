import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/features/cubit/state.dart';
import 'package:task1/core/firebase/firebase_db.dart';
import 'package:task1/core/firebase/models/user_model.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.firebaseDb) : super(UserInitial());

  FirebaseDb firebaseDb;

  Future<void> signUp(String email, String password, String name) async {
    try {
      emit(UsersLoading());
      await firebaseDb.signUp(email, password, name);
      final user = UserModel(
        name: name,
        email: email,
        password: password,
        favRecipes: [],
      );
      emit(UsersLoaded(user: user));
    } catch (e) {
      emit(UsersError(message: 'Failed to sign up: $e'));
    }
  }

  Future<void> signIn(String email, String password) async {
    try {
      emit(UsersLoading());
      final user = await firebaseDb.signIn(email, password);
      emit(UsersLoaded(user: user));
    } catch (e) {
      emit(UsersError(message: 'Failed to sign in: $e'));
    }
  }
}
