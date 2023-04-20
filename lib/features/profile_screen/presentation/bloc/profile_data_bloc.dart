import 'package:chatty/core/domain/models/app_user.dart';
import 'package:chatty/core/domain/validation/email_validator.dart';
import 'package:chatty/core/domain/value_object/email.dart';
import 'package:chatty/core/domain/value_object/user_name.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/models/updated_user.dart';

part 'profile_data_event.dart';
part 'profile_data_state.dart';
part 'profile_data_bloc.freezed.dart';

class ProfileDataBloc extends Bloc<ProfileDataEvent, ProfileDataState> {
  ProfileDataBloc() : super(ProfileDataState.initial()) {
    on<_UserHasChanged>(_onUserHasChanged);
    on<_NameHasChanged>(_onNameHasChanged);
    on<_EmailHasChanged>(_onEmailHasChanged);
    on<_AboutHasChanged>(_onAboutHasChanged);
  }

  _onUserHasChanged(_UserHasChanged event, Emitter<ProfileDataState> emit) {
    emit(state.copyWith(
      email: Email.fromString(value: event.user.email ?? ''),
      name: Username.fromString(value: event.user.name ?? ''),
      about: event.user.about ?? '',
    ));
  }

  _onNameHasChanged(_NameHasChanged event, Emitter<ProfileDataState> emit) {
    emit(state.copyWith(name: Username.fromString(value: event.name)));
  }

  _onEmailHasChanged(_EmailHasChanged event, Emitter<ProfileDataState> emit) {
    emit(state.copyWith(email: Email.fromString(value: event.email)));
  }

  _onAboutHasChanged(_AboutHasChanged event, Emitter<ProfileDataState> emit) {
    emit(state.copyWith(about: event.about));
  }
}
