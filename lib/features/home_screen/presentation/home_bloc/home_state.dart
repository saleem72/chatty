part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loggedOut() = HomeLoggedOut;
  const factory HomeState.loaded({required AppUser user}) = _Loaded;
  const factory HomeState.loading({required AppUser user}) = _Loading;
  const factory HomeState.newUser({
    required AppUser user,
  }) = NewUserState;
  const factory HomeState.failure({required HomeFailure failure}) =
      HomeFailureState;
}
