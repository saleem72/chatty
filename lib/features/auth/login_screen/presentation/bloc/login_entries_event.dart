part of 'login_entries_bloc.dart';

@freezed
class LoginEntriesEvent with _$LoginEntriesEvent {
  const factory LoginEntriesEvent.usernameHasChanged({
    required String username,
  }) = _UsernameHasChanged;
  const factory LoginEntriesEvent.emailHasChanged({
    required String email,
  }) = _EmailHasChanged;
  const factory LoginEntriesEvent.passwordHasChanged({
    required String password,
  }) = _PasswordHasChanged;
}
