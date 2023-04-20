//

import 'package:chatty/core/data/firebase_auth_manager/extension/data_snapshot_extension.dart';
import 'package:chatty/core/domain/models/updated_user.dart';
import 'package:dartz/dartz.dart';

import 'package:chatty/core/domain/models/app_user.dart';

import 'package:chatty/core/domain/error/user_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'dart:io';

import '../../../configuration/errors/app_exceptions.dart';
import '../../domain/repositories/i_user_service.dart';

class UserService implements IUserService {
  final auth = FirebaseAuth.instance;
  final db = FirebaseDatabase.instance.ref();
  @override
  Future<Either<UserFailure, AppUser>> currentUser() async {
    final user = auth.currentUser;
    if (user != null) {
      final temp = await _getUser(user.uid);
      return right(temp);
    } else {
      return const Left(UserFailure.unKnown());
    }
  }

  @override
  Future<Either<UserFailure, AppUser>> uploadImage(File image) async {
    try {
      final uid = auth.currentUser?.uid;
      if (uid == null) {
        return const Left(UserFailure.unKnown());
      }
      final ext = image.path.split(".").last;
      // Create a storage reference from our app
      final storageRef = FirebaseStorage.instance.ref();
      final filename = '$uid.$ext';

      // Create a reference to "mountains.jpg"
      final mountainsRef = storageRef.child(filename);

      // Create a reference to 'images/mountains.jpg'
      final mountainImagesRef = storageRef.child("images/$filename");

      // While the file names are the same, the references point to different files
      assert(mountainsRef.name == mountainImagesRef.name);
      assert(mountainsRef.fullPath != mountainImagesRef.fullPath);

      await mountainsRef.putFile(
          image,
          SettableMetadata(
            contentType: "image/jpeg",
          ));
      final imageUrl = await mountainsRef.getDownloadURL();
      return _updateCurrentUserImageURL(uid, imageUrl);
    } on FirebaseException catch (e) {
      debugPrint('🔥 ${e.code}');
      return const Left(UserFailure.unKnown());
    }
  }

  Future<Either<UserFailure, AppUser>> _updateCurrentUserImageURL(
      String userId, String url) async {
    try {
      DatabaseReference ref =
          FirebaseDatabase.instance.ref("users").child(userId);

      await ref.update({
        "imageUrl": url,
      });

      final user = _currrentUser();
      return user;
    } on FirebaseException catch (e) {
      debugPrint('🔥 ${e.code}');
      return const Left(UserFailure.unKnown());
    }
  }

  Future<Either<UserFailure, AppUser>> _currrentUser() async {
    final user = auth.currentUser;
    if (user == null) {
      return const Left(UserFailure.unKnown());
    }

    try {
      final temp = await _getUser(user.uid);
      return right(temp);
    } on FirebaseException catch (e) {
      debugPrint(e.toString());
      throw AppUnExpectedError(e.toString());
    }
  }

  Future<AppUser> _getUser(String userId) async {
    try {
      final snapshot = await db.child('users').child(userId).get();
      if (snapshot.exists) {
        final map = snapshot.toJson();
        return AppUser.fromMap(map, userId);
      } else {
        debugPrint('No data available.');
        throw const AppUnExpectedError('No data available.');
      }
    } on FirebaseException catch (e) {
      debugPrint(e.toString());
      throw AppUnExpectedError(e.toString());
    }
  }

  @override
  Future<Either<UserFailure, AppUser>> updateProfile(
      UpdatedUserWithId user) async {
    final map = user.toMap();
    final uid = user.uid;

    try {
      DatabaseReference ref = FirebaseDatabase.instance.ref("users").child(uid);

      await ref.update(map);

      final user = _currrentUser();
      return user;
    } on FirebaseException catch (e) {
      debugPrint('🔥 ${e.code}');
      return const Left(UserFailure.unKnown());
    }
  }
}
