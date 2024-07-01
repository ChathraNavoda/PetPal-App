import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pet_repository/src/models/user.dart';
import 'package:pet_repository/src/user_repo.dart';

class FirebaseUserRepo implements UserRepository {
  final FirebaseAuth _firebaseAuth;
  final userCollection = FirebaseFirestore.instance.collection('users');

  FirebaseUserRepo({
    FirebaseAuth? firebaseAuth,
  }) : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  @override
  Future<void> logOut() {
    throw UnimplementedError();
  }

  @override
  Future<void> setUserData(MyUser user) {
    throw UnimplementedError();
  }

  @override
  Future<void> signIn(String email, String password) {
    throw UnimplementedError();
  }

  @override
  Future<MyUser> signUp(MyUser myUser, String password) {
    throw UnimplementedError();
  }

  @override
  Stream<MyUser?> get user => throw UnimplementedError();
}
