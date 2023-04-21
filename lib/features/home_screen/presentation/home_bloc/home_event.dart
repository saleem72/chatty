part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.logout() = _Logout;
  const factory HomeEvent.newChats({
    required AppUser user,
  }) = _NewChats;
  const factory HomeEvent.subscripToChats({
    required String userId,
  }) = _SubscripToChats;
}
