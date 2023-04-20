import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_entries_event.dart';
part 'login_entries_state.dart';
part 'login_entries_bloc.freezed.dart';

class LoginEntriesBloc extends Bloc<LoginEntriesEvent, LoginEntriesState> {
  LoginEntriesBloc() : super(LoginEntriesState.initial()) {
    on<_UsernameHasChanged>(_onUsernameHasChanged);
    on<_PasswordHasChanged>(_onPasswordHasChanged);
  }

  void _onUsernameHasChanged(
      _UsernameHasChanged event, Emitter<LoginEntriesState> emit) {
    final isValid = _checkValidation(event.username, state.password);
    emit(state.copyWith(username: event.username, isFormValid: isValid));
  }

  void _onPasswordHasChanged(
      _PasswordHasChanged event, Emitter<LoginEntriesState> emit) {
    final isValid = _checkValidation(state.username, event.password);
    emit(state.copyWith(password: event.password, isFormValid: isValid));
  }

  bool _checkValidation(String username, String password) {
    return username.isNotEmpty && password.isNotEmpty;
  }
}
