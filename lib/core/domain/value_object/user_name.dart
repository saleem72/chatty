//

import 'package:freezed_annotation/freezed_annotation.dart';

import '../validation/user_name_validator.dart';

part 'user_name.freezed.dart';

@freezed
class Username with _$Username {
  const Username._();

  factory Username({
    required String value,
    required UsernameValidatorError? error,
  }) = _Username;

  factory Username.initial() => Username(
        value: '',
        error: const UsernameValidatorError.empty(),
      );

  factory Username.fromString({
    required String value,
  }) =>
      Username(
        value: value,
        error: value.isValidUsername(),
      );

  bool isValid() => error == null;
}
