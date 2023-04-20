// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_entries_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEntriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameHasChanged,
    required TResult Function(String password) passwordHasChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? usernameHasChanged,
    TResult? Function(String password)? passwordHasChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameHasChanged,
    TResult Function(String password)? passwordHasChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameHasChanged value) usernameHasChanged,
    required TResult Function(_PasswordHasChanged value) passwordHasChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsernameHasChanged value)? usernameHasChanged,
    TResult? Function(_PasswordHasChanged value)? passwordHasChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameHasChanged value)? usernameHasChanged,
    TResult Function(_PasswordHasChanged value)? passwordHasChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEntriesEventCopyWith<$Res> {
  factory $LoginEntriesEventCopyWith(
          LoginEntriesEvent value, $Res Function(LoginEntriesEvent) then) =
      _$LoginEntriesEventCopyWithImpl<$Res, LoginEntriesEvent>;
}

/// @nodoc
class _$LoginEntriesEventCopyWithImpl<$Res, $Val extends LoginEntriesEvent>
    implements $LoginEntriesEventCopyWith<$Res> {
  _$LoginEntriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UsernameHasChangedCopyWith<$Res> {
  factory _$$_UsernameHasChangedCopyWith(_$_UsernameHasChanged value,
          $Res Function(_$_UsernameHasChanged) then) =
      __$$_UsernameHasChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$_UsernameHasChangedCopyWithImpl<$Res>
    extends _$LoginEntriesEventCopyWithImpl<$Res, _$_UsernameHasChanged>
    implements _$$_UsernameHasChangedCopyWith<$Res> {
  __$$_UsernameHasChangedCopyWithImpl(
      _$_UsernameHasChanged _value, $Res Function(_$_UsernameHasChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$_UsernameHasChanged(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UsernameHasChanged implements _UsernameHasChanged {
  const _$_UsernameHasChanged({required this.username});

  @override
  final String username;

  @override
  String toString() {
    return 'LoginEntriesEvent.usernameHasChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsernameHasChanged &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsernameHasChangedCopyWith<_$_UsernameHasChanged> get copyWith =>
      __$$_UsernameHasChangedCopyWithImpl<_$_UsernameHasChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameHasChanged,
    required TResult Function(String password) passwordHasChanged,
  }) {
    return usernameHasChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? usernameHasChanged,
    TResult? Function(String password)? passwordHasChanged,
  }) {
    return usernameHasChanged?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameHasChanged,
    TResult Function(String password)? passwordHasChanged,
    required TResult orElse(),
  }) {
    if (usernameHasChanged != null) {
      return usernameHasChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameHasChanged value) usernameHasChanged,
    required TResult Function(_PasswordHasChanged value) passwordHasChanged,
  }) {
    return usernameHasChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsernameHasChanged value)? usernameHasChanged,
    TResult? Function(_PasswordHasChanged value)? passwordHasChanged,
  }) {
    return usernameHasChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameHasChanged value)? usernameHasChanged,
    TResult Function(_PasswordHasChanged value)? passwordHasChanged,
    required TResult orElse(),
  }) {
    if (usernameHasChanged != null) {
      return usernameHasChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameHasChanged implements LoginEntriesEvent {
  const factory _UsernameHasChanged({required final String username}) =
      _$_UsernameHasChanged;

  String get username;
  @JsonKey(ignore: true)
  _$$_UsernameHasChangedCopyWith<_$_UsernameHasChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordHasChangedCopyWith<$Res> {
  factory _$$_PasswordHasChangedCopyWith(_$_PasswordHasChanged value,
          $Res Function(_$_PasswordHasChanged) then) =
      __$$_PasswordHasChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_PasswordHasChangedCopyWithImpl<$Res>
    extends _$LoginEntriesEventCopyWithImpl<$Res, _$_PasswordHasChanged>
    implements _$$_PasswordHasChangedCopyWith<$Res> {
  __$$_PasswordHasChangedCopyWithImpl(
      _$_PasswordHasChanged _value, $Res Function(_$_PasswordHasChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_PasswordHasChanged(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordHasChanged implements _PasswordHasChanged {
  const _$_PasswordHasChanged({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'LoginEntriesEvent.passwordHasChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordHasChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordHasChangedCopyWith<_$_PasswordHasChanged> get copyWith =>
      __$$_PasswordHasChangedCopyWithImpl<_$_PasswordHasChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameHasChanged,
    required TResult Function(String password) passwordHasChanged,
  }) {
    return passwordHasChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? usernameHasChanged,
    TResult? Function(String password)? passwordHasChanged,
  }) {
    return passwordHasChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameHasChanged,
    TResult Function(String password)? passwordHasChanged,
    required TResult orElse(),
  }) {
    if (passwordHasChanged != null) {
      return passwordHasChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameHasChanged value) usernameHasChanged,
    required TResult Function(_PasswordHasChanged value) passwordHasChanged,
  }) {
    return passwordHasChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsernameHasChanged value)? usernameHasChanged,
    TResult? Function(_PasswordHasChanged value)? passwordHasChanged,
  }) {
    return passwordHasChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameHasChanged value)? usernameHasChanged,
    TResult Function(_PasswordHasChanged value)? passwordHasChanged,
    required TResult orElse(),
  }) {
    if (passwordHasChanged != null) {
      return passwordHasChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordHasChanged implements LoginEntriesEvent {
  const factory _PasswordHasChanged({required final String password}) =
      _$_PasswordHasChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$_PasswordHasChangedCopyWith<_$_PasswordHasChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginEntriesState {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isFormValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEntriesStateCopyWith<LoginEntriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEntriesStateCopyWith<$Res> {
  factory $LoginEntriesStateCopyWith(
          LoginEntriesState value, $Res Function(LoginEntriesState) then) =
      _$LoginEntriesStateCopyWithImpl<$Res, LoginEntriesState>;
  @useResult
  $Res call({String username, String password, bool isFormValid});
}

/// @nodoc
class _$LoginEntriesStateCopyWithImpl<$Res, $Val extends LoginEntriesState>
    implements $LoginEntriesStateCopyWith<$Res> {
  _$LoginEntriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? isFormValid = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginEntriesStateCopyWith<$Res>
    implements $LoginEntriesStateCopyWith<$Res> {
  factory _$$_LoginEntriesStateCopyWith(_$_LoginEntriesState value,
          $Res Function(_$_LoginEntriesState) then) =
      __$$_LoginEntriesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password, bool isFormValid});
}

/// @nodoc
class __$$_LoginEntriesStateCopyWithImpl<$Res>
    extends _$LoginEntriesStateCopyWithImpl<$Res, _$_LoginEntriesState>
    implements _$$_LoginEntriesStateCopyWith<$Res> {
  __$$_LoginEntriesStateCopyWithImpl(
      _$_LoginEntriesState _value, $Res Function(_$_LoginEntriesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? isFormValid = null,
  }) {
    return _then(_$_LoginEntriesState(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginEntriesState implements _LoginEntriesState {
  const _$_LoginEntriesState(
      {required this.username,
      required this.password,
      required this.isFormValid});

  @override
  final String username;
  @override
  final String password;
  @override
  final bool isFormValid;

  @override
  String toString() {
    return 'LoginEntriesState(username: $username, password: $password, isFormValid: $isFormValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginEntriesState &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isFormValid, isFormValid) ||
                other.isFormValid == isFormValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password, isFormValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginEntriesStateCopyWith<_$_LoginEntriesState> get copyWith =>
      __$$_LoginEntriesStateCopyWithImpl<_$_LoginEntriesState>(
          this, _$identity);
}

abstract class _LoginEntriesState implements LoginEntriesState {
  const factory _LoginEntriesState(
      {required final String username,
      required final String password,
      required final bool isFormValid}) = _$_LoginEntriesState;

  @override
  String get username;
  @override
  String get password;
  @override
  bool get isFormValid;
  @override
  @JsonKey(ignore: true)
  _$$_LoginEntriesStateCopyWith<_$_LoginEntriesState> get copyWith =>
      throw _privateConstructorUsedError;
}
