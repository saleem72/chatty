//

//

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_name_validator.freezed.dart';

@freezed
class UsernameValidatorError with _$UsernameValidatorError {
  const factory UsernameValidatorError.empty() = _Empty;
}

class UsernameValidator {
  Either<UsernameValidatorError, Unit> call(String input) {
    if (input.isEmpty) {
      return const Left(UsernameValidatorError.empty());
    }
    return const Right(unit);
  }
}

extension StringUsernameValidator on String {
  UsernameValidatorError? isValidUsername() {
    if (isEmpty) {
      return const UsernameValidatorError.empty();
    }
    return null;
  }
}
