part of 'users_bloc.dart';

@freezed
class UsersEvent with _$UsersEvent {
  const factory UsersEvent.logout() = _Logout;
  const factory UsersEvent.newChats({
    required AppUser user,
  }) = _NewChats;
  const factory UsersEvent.subscripToChats({
    required String userId,
  }) = _SubscripToChats;
}
