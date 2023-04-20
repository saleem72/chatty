//

import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/repositories/i_auth_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthService authManager;
  AuthBloc({
    required this.authManager,
  }) : super(AuthState.initial()) {
    _trackAuthState();
    on<_CheckForAuthStatus>(_onCheckForAuthStatus);
    on<_Logout>(_onLogout);
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

  _onLogout(_Logout event, Emitter<AuthState> emit) {
    emit(AuthState.unAuthzorized());
  }

  _onCheckForAuthStatus(
      _CheckForAuthStatus event, Emitter<AuthState> emit) async {
    final either = await authManager.currrentUser();
    either.fold(
      (l) => emit(AuthState.unAuthzorized()),
      (r) => emit(AuthState.authzorized(userId: r.uid)),
    );
  }
}
