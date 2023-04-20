import 'package:equatable/equatable.dart';

class AppException extends Equatable implements Exception {
  final String? _message;
  final String? _prefix;

  const AppException({String? message, String? prefix})
      : _message = message,
        _prefix = prefix;

  @override
  String toString() {
    return "${_prefix ?? ''}${_message ?? ''}";
  }

  @override
  List<Object?> get props => [_message, _prefix];
}

class AppUnExpectedError extends AppException {
  const AppUnExpectedError([message]) : super(message: message);
}
