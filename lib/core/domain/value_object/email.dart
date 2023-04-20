//

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:chatty/core/domain/validation/email_validator.dart';

part 'email.freezed.dart';

@freezed
class Email with _$Email {
  const Email._();

  factory Email({
    required String value,
    required EmailValidationError? error,
  }) = _Email;

  factory Email.fromString({
    required String value,
  }) =>
      Email(
        value: value,
        error: value.isValidEmail(),
      );

  factory Email.initial() => Email(
        value: '',
        error: const EmailValidationError.empty(),
      );

  bool isValid() => error == null;
}
