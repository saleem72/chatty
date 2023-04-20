//

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.operationNotAllowed() = _OperationNotAllowed;
  const factory AuthFailure.weakPassword() = _WeakPassword;
  const factory AuthFailure.emailAlreadyInUse() = _EmailAlreadyInUse;
  const factory AuthFailure.unValidEmail() = _UnValidEmail;
  const factory AuthFailure.unknownError() = _UnknownError;
  const factory AuthFailure.invalidUsernameOrPassword() =
      _InvalidUsernameOrPassword;
}
