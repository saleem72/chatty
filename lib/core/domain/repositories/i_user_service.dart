//

import 'dart:io';

import 'package:dartz/dartz.dart';

import '../error/user_failure.dart';
import '../models/app_user.dart';
import '../models/updated_user.dart';

abstract class IUserService {
  Future<Either<UserFailure, AppUser>> currentUser();
  Future<Either<UserFailure, AppUser>> uploadImage(File image);
  Future<Either<UserFailure, AppUser>> updateProfile(UpdatedUserWithId user);
}
