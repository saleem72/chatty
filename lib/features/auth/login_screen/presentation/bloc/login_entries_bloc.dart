import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_entries_event.dart';
part 'login_entries_state.dart';
part 'login_entries_bloc.freezed.dart';

class LoginEntriesBloc extends Bloc<LoginEntriesEvent, LoginEntriesState> {
  LoginEntriesBloc() : super(LoginEntriesState.initial()) {
    on<_UsernameHasChanged>(_onUsernameHasChanged);
    on<_PasswordHasChanged>(_onPasswordHasChanged);
    on<_EmailHasChanged>(_onEmailHasChanged);
  }

  void _onEmailHasChanged(
      _EmailHasChanged event, Emitter<LoginEntriesState> emit) {
    final isLoginValid = _checkLoginValidation(event.email, state.password);
    final isRegisterValid = _checkRegisterValidation(
        username: state.username, email: event.email, password: state.password);
    emit(state.copyWith(
      email: event.email,
      isLoginFormValid: isLoginValid,
      isRgisterFormValid: isRegisterValid,
    ));
  }

  void _onPasswordHasChanged(
      _PasswordHasChanged event, Emitter<LoginEntriesState> emit) {
    final isLoginValid = _checkLoginValidation(state.email, event.password);
    final isRegisterValid = _checkRegisterValidation(
        username: state.username, email: state.email, password: event.password);
    emit(state.copyWith(
      password: event.password,
      isLoginFormValid: isLoginValid,
      isRgisterFormValid: isRegisterValid,
    ));
  }

  void _onUsernameHasChanged(
      _UsernameHasChanged event, Emitter<LoginEntriesState> emit) {
    final isValid = _checkRegisterValidation(
        username: event.username, email: state.email, password: state.password);
    emit(state.copyWith(username: event.username, isRgisterFormValid: isValid));
  }

  bool _checkLoginValidation(String email, String password) {
    return email.isNotEmpty && password.isNotEmpty;
  }

  bool _checkRegisterValidation(
      {required String username,
      required String email,
      required String password}) {
    return email.isNotEmpty && password.isNotEmpty && username.isNotEmpty;
  }
}
