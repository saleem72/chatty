part of 'profile_data_bloc.dart';

@freezed
class ProfileDataState with _$ProfileDataState {
  const ProfileDataState._();

  const factory ProfileDataState({
    required Username name,
    required Email email,
    required String about,
  }) = _ProfileDataState;

  factory ProfileDataState.initial() => ProfileDataState(
        name: Username.initial(),
        email: Email.initial(),
        about: '',
      );

  bool isValid() => name.isValid() && email.isValid();

  UpdatedUser toUpdatedUser() => UpdatedUser(
        name: name.value,
        about: about,
      );
}
