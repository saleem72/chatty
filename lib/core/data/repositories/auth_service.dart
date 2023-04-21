// ignore_for_file: public_member_api_docs, sort_constructors_first
//

import 'package:chatty/configuration/errors/app_exceptions.dart';
import 'package:chatty/core/data/firebase_auth_manager/extension/data_snapshot_extension.dart';
import 'package:chatty/core/data/firebase_auth_manager/extension/firebase_user_extension.dart';
import 'package:chatty/core/domain/repositories/i_auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../domain/error/auth_failure.dart';
import '../../domain/models/app_user.dart';

class FirebaseAuthManager implements IAuthService {
  final auth = FirebaseAuth.instance;
  final db = FirebaseDatabase.instance.ref();
  final usersTable = FirebaseDatabase.instance.ref().child('users');

  static List<String> scopes = <String>[
    'email',
  ];
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: scopes,
  );

  @override
  Future<Either<AuthFailure, AppUser>> googleSignIn() async {
    try {
      GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      if (googleSignInAccount == null) {
        return const Left(AuthFailure.unknownError());
      }
      GoogleSignInAuthentication? googleSignInAuthentication =
          await googleSignInAccount.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      final userCredential = await auth.signInWithCredential(credential);
      final tempUser = userCredential.user;
      if (tempUser == null) {
        return const Left(AuthFailure.unknownError());
      } else {
        // get user if not exsits create it
        final storedUser = await _getUser(tempUser.uid);
        if (storedUser != null) {
          return right(storedUser);
        } else {
          final user = await _createUser(tempUser, UserProvider.google);
          return right(user);
        }
      }
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "operation-not-allowed":
          return const Left(AuthFailure.operationNotAllowed());
        default:
          return const Left(AuthFailure.unknownError());
      }
    } catch (error) {
      debugPrint('🔥 ${error.toString()}');
      return const Left(AuthFailure.unknownError());
    }
  }

  @override
  Future<Either<AuthFailure, AppUser>> signinWithUsernameAndPassword(
      String emailAddress, String password) async {
    try {
      final userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
      final tempUser = userCredential.user;
      if (tempUser == null) {
        return const Left(AuthFailure.unknownError());
      } else {
        final user = await _getUser(tempUser.uid);
        if (user != null) {
          return right(user);
        } else {
          return const Left(AuthFailure.unknownError());
        }
      }
    } on FirebaseAuthException catch (e) {
      debugPrint('🔥 ${e.code}');
      if (e.code == 'user-not-found') {
        return const Left(AuthFailure.invalidUsernameOrPassword());
      } else if (e.code == 'wrong-password') {
        return const Left(AuthFailure.invalidUsernameOrPassword());
      } else {
        return const Left(AuthFailure.unknownError());
      }
    } catch (e) {
      debugPrint(e.toString());
      return const Left(AuthFailure.unknownError());
    }
  }

  Future<AppUser?> _getUser(String userId) async {
    try {
      final snapshot = await usersTable.child(userId).get();
      if (snapshot.exists) {
        final map = snapshot.toJson();
        return AppUser.fromMap(map, userId);
      } else {
        debugPrint('No data available.');
        return null;
      }
    } on FirebaseException catch (e) {
      debugPrint(e.code);
      return null;
    }
  }

  @override
  Future<Either<AuthFailure, AppUser>> registerWithUsernameAndPassword(
      String emailAddress, String password) async {
    try {
      final userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      final tempUser = userCredential.user;
      if (tempUser == null) {
        return const Left(AuthFailure.unknownError());
      } else {
        final user = await _createUser(tempUser, UserProvider.username);
        return right(user);
      }
    } on FirebaseAuthException catch (e) {
      debugPrint('🔥 ${e.code}');
      if (e.code == 'weak-password') {
        debugPrint('The password provided is too weak.');
        return const Left(AuthFailure.weakPassword());
      } else if (e.code == 'email-already-in-use') {
        debugPrint('The account already exists for that email.');
        return const Left(AuthFailure.emailAlreadyInUse());
      } else if (e.code == 'invalid-email') {
        debugPrint('The email address is badly formatted.');
        return const Left(AuthFailure.unValidEmail());
      } else {
        return const Left(AuthFailure.unknownError());
      }
    } catch (e) {
      debugPrint(e.toString());
      return const Left(AuthFailure.unknownError());
    }
  }

  @override
  Future<Either<AuthFailure, AppUser>> signInAnonymously() async {
    try {
      final userCredential = await auth.signInAnonymously();
      final user = userCredential.user;
      if (user != null) {
        return Right(user.toDomain(UserProvider.anonymous));
      } else {
        return const Left(AuthFailure.unknownError());
      }
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "operation-not-allowed":
          return const Left(AuthFailure.operationNotAllowed());
        default:
          return const Left(AuthFailure.unknownError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> logout() async {
    try {
      await auth.signOut();

      return const Right(unit);
    } on FirebaseAuthException {
      return const Left(AuthFailure.unknownError());
    }
  }

  @override
  Future<Either<AuthFailure, AppUser>> currrentUser() async {
    final authUser = auth.currentUser;
    if (authUser != null) {
      final user = await _getUser(authUser.uid);
      if (user == null) {
        return const Left(AuthFailure.unknownError());
      }
      return right(user);
    } else {
      return const Left(AuthFailure.unknownError());
    }
  }

  Future<AppUser> _createUser(User user, UserProvider provider) async {
    DatabaseReference ref = usersTable.child(user.uid);
    try {
      await ref.set({
        "name": user.displayName ?? '',
        "email": user.email ?? '',
        "imageUrl": user.providerData.first.photoURL ?? '',
        "isAnonymous": false,
        "provider": provider.value(),
        "isOnline": true,
      });

      final appUser = user.toDomain(provider);
      return appUser;
    } on FirebaseException catch (e) {
      throw AppUnExpectedError(e.toString());
    }
  }
}
