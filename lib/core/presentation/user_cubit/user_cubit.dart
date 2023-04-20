//

import 'dart:io';

import 'package:chatty/core/domain/models/app_user.dart';
import 'package:chatty/core/domain/models/updated_user.dart';
import 'package:chatty/core/domain/repositories/i_user_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCubit extends Cubit<AppUser> {
  final IUserService _service;
  UserCubit({
    required IUserService service,
  })  : _service = service,
        super(AppUser.initial()) {
    _getCurrentUser();
  }

  setUser(AppUser user) {
    emit(user);
  }

  _getCurrentUser() async {
    final either = await _service.currentUser();
    either.fold(
      (l) => null,
      (r) => emit(r),
    );
  }

  uploadImage(File image) async {
    final either = await _service.uploadImage(image);
    either.fold(
      (l) => null,
      (r) => emit(r),
    );
  }

  updateProfile(UpdatedUser updated) async {
    final either =
        await _service.updateProfile(updated.toUpdatedUserWithId(state.uid));
    either.fold(
      (l) => null,
      (r) {
        emit(r);
      },
    );
  }
}
