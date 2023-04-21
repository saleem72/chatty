//

import 'dart:async';
import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/app_user.dart';
import '../../domain/models/updated_user.dart';
import '../../domain/repositories/i_auth_service.dart';
import '../../domain/repositories/i_user_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthService _authManager;
  final IUserService _userService;
  AuthBloc(
      {required IAuthService authManager, required IUserService userService})
      : _authManager = authManager,
        _userService = userService,
        super(AuthState.initial()) {
    _trackAuthState();
    on<_CheckForAuthStatus>(_onCheckForAuthStatus);
    on<_Logout>(_onLogout);
    on<_UpdateProfile>(_onUpdateProfile);
    on<_UploadProfileImage>(_onUploadProfileImage);
  }

  StreamSubscription<User?>? subscription;
  _trackAuthState() {
    subscription =
        FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        add(const AuthEvent.logout());
      }
    });
  }

  @override
  Future<void> close() {
    subscription?.cancel();
    return super.close();
  }

  _onUpdateProfile(_UpdateProfile event, Emitter<AuthState> emit) async {
    final map = event.updated.toUpdatedUserWithId(state.user?.uid ?? '');
    final either = await _userService.updateProfile(map);
    either.fold(
      (l) => null,
      (r) {
        emit(AuthState.authzorized(user: r));
      },
    );
  }

  _onUploadProfileImage(
      _UploadProfileImage event, Emitter<AuthState> emit) async {
    final either = await _userService.uploadImage(event.image);
    either.fold(
      (l) => null,
      (r) => emit(AuthState.authzorized(user: r)),
    );
  }

  _onLogout(_Logout event, Emitter<AuthState> emit) {
    emit(AuthState.unAuthzorized());
  }

  _onCheckForAuthStatus(
      _CheckForAuthStatus event, Emitter<AuthState> emit) async {
    final either = await _authManager.currrentUser();
    either.fold(
      (l) => emit(AuthState.unAuthzorized()),
      (r) => emit(AuthState.authzorized(user: r)),
    );
  }
}
