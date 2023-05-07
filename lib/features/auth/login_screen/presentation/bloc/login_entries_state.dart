part of 'login_entries_bloc.dart';

@freezed
class LoginEntriesState with _$LoginEntriesState {
  const factory LoginEntriesState({
    required String username,
    required String password,
    required String email,
    required bool isLoginFormValid,
    required bool isRgisterFormValid,
  }) = _LoginEntriesState;

  factory LoginEntriesState.initial() => const LoginEntriesState(
        username: '',
        password: '',
        email: '',
        isLoginFormValid: false,
        isRgisterFormValid: false,
      );
}
