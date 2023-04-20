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
  final String userId;

  const AuthState._({
    required this.status,
    required this.userId,
  });

  @override
  List<Object?> get props => [status, userId];

  factory AuthState.initial() =>
      const AuthState._(status: AuthStatus.unKnown, userId: ',');
  factory AuthState.authzorized({
    required String userId,
  }) =>
      AuthState._(status: AuthStatus.authzorized, userId: userId);
  factory AuthState.unAuthzorized() =>
      const AuthState._(status: AuthStatus.unAuthzorized, userId: '');
}
