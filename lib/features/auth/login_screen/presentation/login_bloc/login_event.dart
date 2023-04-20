part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.signInAnonymously() = _SignInAnonymously;
  const factory LoginEvent.signInWithGoogle() = _SignInWithGoogle;
  const factory LoginEvent.signInWithUsernameAndPassword({
    required String username,
    required String password,
  }) = _SignInWithUsernameAndPassword;
  const factory LoginEvent.registerWithUsernameAndPassword({
    required String username,
    required String password,
  }) = _RegisterWithUsernameAndPassword;
  const factory LoginEvent.clearError() = _ClearError;
}
