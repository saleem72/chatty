//

import 'package:equatable/equatable.dart';

class AuthException extends Equatable implements Exception {
  final String? _message;
  final String? _prefix;

  const AuthException({String? message, String? prefix})
      : _message = message,
        _prefix = prefix;

  @override
  String toString() {
    return "${_prefix ?? ''}${_message ?? ''}";
  }

  @override
  List<Object?> get props => [_message, _prefix];
}

class FBOperationNotAllowed extends AuthException {}

class FBUnknownError extends AuthException {}
