import 'package:chatty/core/domain/repositories/i_auth_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/domain/error/auth_failure.dart';
import '../../../../../core/domain/models/app_user.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthService authManager;
  LoginBloc({
    required this.authManager,
  }) : super(const _Initial()) {
    on<_SignInAnonymously>(_onSignInAnonymously);
    on<_SignInWithGoogle>(_onSignInWithGoogle);
    on<_SignInWithUsernameAndPassword>(_onSignInWithUsernameAndPassword);
    on<_RegisterWithUsernameAndPassword>(_onRegisterWithUsernameAndPassword);
    on<_ClearError>(_onClearError);
  }

  _onClearError(_ClearError event, Emitter<LoginState> emit) {
    emit(const LoginState.initial());
  }

  _onRegisterWithUsernameAndPassword(
      _RegisterWithUsernameAndPassword event, Emitter<LoginState> emit) async {
    emit(const LoginState.loading());
    final either = await authManager.registerWithUsernameAndPassword(
      event.email,
      event.password,
      event.username,
    );
    either.fold(
      (failure) => emit(LoginState.failure(failure: failure)),
      (user) => emit(LoginState.success(user: user)),
    );
  }

  _onSignInWithUsernameAndPassword(
      _SignInWithUsernameAndPassword event, Emitter<LoginState> emit) async {
    emit(const LoginState.loading());
    final either = await authManager.signinWithUsernameAndPassword(
      event.email,
      event.password,
    );
    either.fold(
      (failure) => emit(LoginState.failure(failure: failure)),
      (user) => emit(LoginState.success(user: user)),
    );
  }

  _onSignInWithGoogle(_SignInWithGoogle event, Emitter<LoginState> emit) async {
    emit(const LoginState.loading());
    final either = await authManager.googleSignIn();
    either.fold(
      (failure) => emit(LoginState.failure(failure: failure)),
      (user) => emit(LoginState.success(user: user)),
    );
  }

  _onSignInAnonymously(
      _SignInAnonymously event, Emitter<LoginState> emit) async {
    emit(const LoginState.loading());
    final either = await authManager.signInAnonymously();
    either.fold(
      (failure) => emit(LoginState.failure(failure: failure)),
      (user) => emit(LoginState.success(user: user)),
    );
  }
}
