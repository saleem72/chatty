//

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failure.freezed.dart';

/*
@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
*/
@freezed
class UserFailure with _$UserFailure {
  const factory UserFailure.unKnown() = _UnKnown;
}
