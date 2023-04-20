part of 'profile_data_bloc.dart';

@freezed
class ProfileDataEvent with _$ProfileDataEvent {
  const factory ProfileDataEvent.userHasChanged({
    required AppUser user,
  }) = _UserHasChanged;
  const factory ProfileDataEvent.nameHasChanged({
    required String name,
  }) = _NameHasChanged;
  const factory ProfileDataEvent.emailHasChanged({
    required String email,
  }) = _EmailHasChanged;
  const factory ProfileDataEvent.aboutHasChanged({
    required String about,
  }) = _AboutHasChanged;
}
