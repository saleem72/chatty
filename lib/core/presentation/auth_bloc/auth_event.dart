part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkForAuthStatus() = _CheckForAuthStatus;
  const factory AuthEvent.signInAnonymously() = _SignInAnonymously;
  const factory AuthEvent.logout() = _Logout;
}
