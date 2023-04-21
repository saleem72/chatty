part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkForAuthStatus() = _CheckForAuthStatus;
  const factory AuthEvent.signInAnonymously() = _SignInAnonymously;
  const factory AuthEvent.logout() = _Logout;
  const factory AuthEvent.updateProfile({required UpdatedUser updated}) =
      _UpdateProfile;
  const factory AuthEvent.uploadProfileImage({required File image}) =
      _UploadProfileImage;
  const factory AuthEvent.newUser({
    required User user,
  }) = _NewUser;
}
