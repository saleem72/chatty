part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.failure({required AuthFailure failure}) =
      LoginFailure;
  const factory LoginState.success({required AppUser user}) = LoginSuccess;
  const factory LoginState.loading() = LoginLoding;
}
