part of 'login_entries_bloc.dart';

@freezed
class LoginEntriesState with _$LoginEntriesState {
  const factory LoginEntriesState({
    required String username,
    required String password,
    required bool isFormValid,
  }) = _LoginEntriesState;

  factory LoginEntriesState.initial() =>
      const LoginEntriesState(username: '', password: '', isFormValid: false);
}
