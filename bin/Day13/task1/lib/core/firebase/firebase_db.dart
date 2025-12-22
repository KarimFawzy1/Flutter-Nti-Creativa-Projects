import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'models/user_model.dart';

class FirebaseDb {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> signUp(String email, String password, String name) async {
    UserCredential userCredential;
    try {
      userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      throw Exception('Failed to create user: ${e.toString()}');
    }
    try {
      await firestore
          .collection('users')
          .doc(userCredential.user?.uid)
          .set(
            UserModel(
              name: name,
              email: email,
              password: password,
              favRecipes: [],
            ).toJson(),
          );
    } catch (e) {
      throw Exception('Failed to store user data: ${e.toString()}');
    }
  }

  Future<UserModel> signIn(String email, String password) async {
    UserCredential userCredential = await auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    try {
      DocumentSnapshot<Map<String, dynamic>> data = await firestore
          .collection('users')
          .doc(userCredential.user?.uid)
          .get();
      return UserModel.fromJson(data.data()!);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
