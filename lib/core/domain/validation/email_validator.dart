//

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_validator.freezed.dart';

@freezed
class EmailValidationError with _$EmailValidationError {
  const factory EmailValidationError.empty() = _Empty;
  const factory EmailValidationError.invalidFormat() = _InvalidFormat;
}

class EmailValidator {
  Either<EmailValidationError, Unit> call(String input) {
    if (input.isEmpty) {
      return const Left(EmailValidationError.empty());
    }

    final reg = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if (!reg.hasMatch(input)) {
      return const Left(EmailValidationError.invalidFormat());
    }
    return const Right(unit);
  }
}

extension StringEmailValidator on String {
  EmailValidationError? isValidEmail() {
    if (isEmpty) {
      return const EmailValidationError.empty();
    }

    final reg = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if (!reg.hasMatch(this)) {
      return const EmailValidationError.invalidFormat();
    }
    return null;
  }
}
