//

import 'package:dartz/dartz.dart';

import '../error/auth_failure.dart';
import '../models/app_user.dart';

abstract class IAuthService {
  Future<Either<AuthFailure, AppUser>> registerWithUsernameAndPassword(
      String emailAddress, String password);
  Future<Either<AuthFailure, AppUser>> signinWithUsernameAndPassword(
      String emailAddress, String password);
  Future<Either<AuthFailure, AppUser>> googleSignIn();
  Future<Either<AuthFailure, AppUser>> signInAnonymously();
  Future<Either<AuthFailure, AppUser>> currrentUser();
  Future<Either<AuthFailure, Unit>> logout();
}
