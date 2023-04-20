part of 'users_bloc.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState.initial() = _Initial;
  const factory UsersState.loggedOut() = HomeLoggedOut;
  const factory UsersState.loaded({required AppUser user}) = _Loaded;
  const factory UsersState.loading({required AppUser user}) = _Loading;
  const factory UsersState.newUser({
    required AppUser user,
  }) = NewUserState;
  const factory UsersState.onlineUsers({
    required List<AppUser> users,
  }) = _OnLineUsers;
  const factory UsersState.failure({required HomeFailure failure}) =
      HomeFailureState;
}
