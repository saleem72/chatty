// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

/*
@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authzorized({
    required String userId,
  }) = _Authzorized;
  const factory AuthState.unAuthzorized() = _UnAuthzorized;
}

*/

enum AuthStatus { unKnown, authzorized, unAuthzorized }

class AuthState extends Equatable {
  final AuthStatus status;
  final AppUser? user;

  const AuthState._({
    required this.status,
    this.user,
  });

  @override
  List<Object?> get props => [status, user];

  factory AuthState.initial() => const AuthState._(status: AuthStatus.unKnown);
  factory AuthState.authzorized({
    required AppUser user,
  }) =>
      AuthState._(status: AuthStatus.authzorized, user: user);
  factory AuthState.unAuthzorized() =>
      const AuthState._(status: AuthStatus.unAuthzorized);
}
