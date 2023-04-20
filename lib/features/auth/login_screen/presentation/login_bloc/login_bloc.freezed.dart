// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInAnonymously,
    required TResult Function() signInWithGoogle,
    required TResult Function(String username, String password)
        signInWithUsernameAndPassword,
    required TResult Function(String username, String password)
        registerWithUsernameAndPassword,
    required TResult Function() clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInAnonymously,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String username, String password)?
        signInWithUsernameAndPassword,
    TResult? Function(String username, String password)?
        registerWithUsernameAndPassword,
    TResult? Function()? clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInAnonymously,
    TResult Function()? signInWithGoogle,
    TResult Function(String username, String password)?
        signInWithUsernameAndPassword,
    TResult Function(String username, String password)?
        registerWithUsernameAndPassword,
    TResult Function()? clearError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithUsernameAndPassword value)
        signInWithUsernameAndPassword,
    required TResult Function(_RegisterWithUsernameAndPassword value)
        registerWithUsernameAndPassword,
    required TResult Function(_ClearError value) clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithUsernameAndPassword value)?
        signInWithUsernameAndPassword,
    TResult? Function(_RegisterWithUsernameAndPassword value)?
        registerWithUsernameAndPassword,
    TResult? Function(_ClearError value)? clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithUsernameAndPassword value)?
        signInWithUsernameAndPassword,
    TResult Function(_RegisterWithUsernameAndPassword value)?
        registerWithUsernameAndPassword,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SignInAnonymouslyCopyWith<$Res> {
  factory _$$_SignInAnonymouslyCopyWith(_$_SignInAnonymously value,
          $Res Function(_$_SignInAnonymously) then) =
      __$$_SignInAnonymouslyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInAnonymouslyCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_SignInAnonymously>
    implements _$$_SignInAnonymouslyCopyWith<$Res> {
  __$$_SignInAnonymouslyCopyWithImpl(
      _$_SignInAnonymously _value, $Res Function(_$_SignInAnonymously) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignInAnonymously implements _SignInAnonymously {
  const _$_SignInAnonymously();

  @override
  String toString() {
    return 'LoginEvent.signInAnonymously()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignInAnonymously);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInAnonymously,
    required TResult Function() signInWithGoogle,
    required TResult Function(String username, String password)
        signInWithUsernameAndPassword,
    required TResult Function(String username, String password)
        registerWithUsernameAndPassword,
    required TResult Function() clearError,
  }) {
    return signInAnonymously();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInAnonymously,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String username, String password)?
        signInWithUsernameAndPassword,
    TResult? Function(String username, String password)?
        registerWithUsernameAndPassword,
    TResult? Function()? clearError,
  }) {
    return signInAnonymously?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInAnonymously,
    TResult Function()? signInWithGoogle,
    TResult Function(String username, String password)?
        signInWithUsernameAndPassword,
    TResult Function(String username, String password)?
        registerWithUsernameAndPassword,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (signInAnonymously != null) {
      return signInAnonymously();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithUsernameAndPassword value)
        signInWithUsernameAndPassword,
    required TResult Function(_RegisterWithUsernameAndPassword value)
        registerWithUsernameAndPassword,
    required TResult Function(_ClearError value) clearError,
  }) {
    return signInAnonymously(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithUsernameAndPassword value)?
        signInWithUsernameAndPassword,
    TResult? Function(_RegisterWithUsernameAndPassword value)?
        registerWithUsernameAndPassword,
    TResult? Function(_ClearError value)? clearError,
  }) {
    return signInAnonymously?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithUsernameAndPassword value)?
        signInWithUsernameAndPassword,
    TResult Function(_RegisterWithUsernameAndPassword value)?
        registerWithUsernameAndPassword,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (signInAnonymously != null) {
      return signInAnonymously(this);
    }
    return orElse();
  }
}

abstract class _SignInAnonymously implements LoginEvent {
  const factory _SignInAnonymously() = _$_SignInAnonymously;
}

/// @nodoc
abstract class _$$_SignInWithGoogleCopyWith<$Res> {
  factory _$$_SignInWithGoogleCopyWith(
          _$_SignInWithGoogle value, $Res Function(_$_SignInWithGoogle) then) =
      __$$_SignInWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInWithGoogleCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_SignInWithGoogle>
    implements _$$_SignInWithGoogleCopyWith<$Res> {
  __$$_SignInWithGoogleCopyWithImpl(
      _$_SignInWithGoogle _value, $Res Function(_$_SignInWithGoogle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignInWithGoogle implements _SignInWithGoogle {
  const _$_SignInWithGoogle();

  @override
  String toString() {
    return 'LoginEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInAnonymously,
    required TResult Function() signInWithGoogle,
    required TResult Function(String username, String password)
        signInWithUsernameAndPassword,
    required TResult Function(String username, String password)
        registerWithUsernameAndPassword,
    required TResult Function() clearError,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInAnonymously,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String username, String password)?
        signInWithUsernameAndPassword,
    TResult? Function(String username, String password)?
        registerWithUsernameAndPassword,
    TResult? Function()? clearError,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInAnonymously,
    TResult Function()? signInWithGoogle,
    TResult Function(String username, String password)?
        signInWithUsernameAndPassword,
    TResult Function(String username, String password)?
        registerWithUsernameAndPassword,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithUsernameAndPassword value)
        signInWithUsernameAndPassword,
    required TResult Function(_RegisterWithUsernameAndPassword value)
        registerWithUsernameAndPassword,
    required TResult Function(_ClearError value) clearError,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithUsernameAndPassword value)?
        signInWithUsernameAndPassword,
    TResult? Function(_RegisterWithUsernameAndPassword value)?
        registerWithUsernameAndPassword,
    TResult? Function(_ClearError value)? clearError,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithUsernameAndPassword value)?
        signInWithUsernameAndPassword,
    TResult Function(_RegisterWithUsernameAndPassword value)?
        registerWithUsernameAndPassword,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGoogle implements LoginEvent {
  const factory _SignInWithGoogle() = _$_SignInWithGoogle;
}

/// @nodoc
abstract class _$$_SignInWithUsernameAndPasswordCopyWith<$Res> {
  factory _$$_SignInWithUsernameAndPasswordCopyWith(
          _$_SignInWithUsernameAndPassword value,
          $Res Function(_$_SignInWithUsernameAndPassword) then) =
      __$$_SignInWithUsernameAndPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$_SignInWithUsernameAndPasswordCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_SignInWithUsernameAndPassword>
    implements _$$_SignInWithUsernameAndPasswordCopyWith<$Res> {
  __$$_SignInWithUsernameAndPasswordCopyWithImpl(
      _$_SignInWithUsernameAndPassword _value,
      $Res Function(_$_SignInWithUsernameAndPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$_SignInWithUsernameAndPassword(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignInWithUsernameAndPassword
    implements _SignInWithUsernameAndPassword {
  const _$_SignInWithUsernameAndPassword(
      {required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.signInWithUsernameAndPassword(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInWithUsernameAndPassword &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInWithUsernameAndPasswordCopyWith<_$_SignInWithUsernameAndPassword>
      get copyWith => __$$_SignInWithUsernameAndPasswordCopyWithImpl<
          _$_SignInWithUsernameAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInAnonymously,
    required TResult Function() signInWithGoogle,
    required TResult Function(String username, String password)
        signInWithUsernameAndPassword,
    required TResult Function(String username, String password)
        registerWithUsernameAndPassword,
    required TResult Function() clearError,
  }) {
    return signInWithUsernameAndPassword(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInAnonymously,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String username, String password)?
        signInWithUsernameAndPassword,
    TResult? Function(String username, String password)?
        registerWithUsernameAndPassword,
    TResult? Function()? clearError,
  }) {
    return signInWithUsernameAndPassword?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInAnonymously,
    TResult Function()? signInWithGoogle,
    TResult Function(String username, String password)?
        signInWithUsernameAndPassword,
    TResult Function(String username, String password)?
        registerWithUsernameAndPassword,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (signInWithUsernameAndPassword != null) {
      return signInWithUsernameAndPassword(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithUsernameAndPassword value)
        signInWithUsernameAndPassword,
    required TResult Function(_RegisterWithUsernameAndPassword value)
        registerWithUsernameAndPassword,
    required TResult Function(_ClearError value) clearError,
  }) {
    return signInWithUsernameAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithUsernameAndPassword value)?
        signInWithUsernameAndPassword,
    TResult? Function(_RegisterWithUsernameAndPassword value)?
        registerWithUsernameAndPassword,
    TResult? Function(_ClearError value)? clearError,
  }) {
    return signInWithUsernameAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithUsernameAndPassword value)?
        signInWithUsernameAndPassword,
    TResult Function(_RegisterWithUsernameAndPassword value)?
        registerWithUsernameAndPassword,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (signInWithUsernameAndPassword != null) {
      return signInWithUsernameAndPassword(this);
    }
    return orElse();
  }
}

abstract class _SignInWithUsernameAndPassword implements LoginEvent {
  const factory _SignInWithUsernameAndPassword(
      {required final String username,
      required final String password}) = _$_SignInWithUsernameAndPassword;

  String get username;
  String get password;
  @JsonKey(ignore: true)
  _$$_SignInWithUsernameAndPasswordCopyWith<_$_SignInWithUsernameAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisterWithUsernameAndPasswordCopyWith<$Res> {
  factory _$$_RegisterWithUsernameAndPasswordCopyWith(
          _$_RegisterWithUsernameAndPassword value,
          $Res Function(_$_RegisterWithUsernameAndPassword) then) =
      __$$_RegisterWithUsernameAndPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$_RegisterWithUsernameAndPasswordCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_RegisterWithUsernameAndPassword>
    implements _$$_RegisterWithUsernameAndPasswordCopyWith<$Res> {
  __$$_RegisterWithUsernameAndPasswordCopyWithImpl(
      _$_RegisterWithUsernameAndPassword _value,
      $Res Function(_$_RegisterWithUsernameAndPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$_RegisterWithUsernameAndPassword(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterWithUsernameAndPassword
    implements _RegisterWithUsernameAndPassword {
  const _$_RegisterWithUsernameAndPassword(
      {required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.registerWithUsernameAndPassword(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterWithUsernameAndPassword &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterWithUsernameAndPasswordCopyWith<
          _$_RegisterWithUsernameAndPassword>
      get copyWith => __$$_RegisterWithUsernameAndPasswordCopyWithImpl<
          _$_RegisterWithUsernameAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInAnonymously,
    required TResult Function() signInWithGoogle,
    required TResult Function(String username, String password)
        signInWithUsernameAndPassword,
    required TResult Function(String username, String password)
        registerWithUsernameAndPassword,
    required TResult Function() clearError,
  }) {
    return registerWithUsernameAndPassword(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInAnonymously,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String username, String password)?
        signInWithUsernameAndPassword,
    TResult? Function(String username, String password)?
        registerWithUsernameAndPassword,
    TResult? Function()? clearError,
  }) {
    return registerWithUsernameAndPassword?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInAnonymously,
    TResult Function()? signInWithGoogle,
    TResult Function(String username, String password)?
        signInWithUsernameAndPassword,
    TResult Function(String username, String password)?
        registerWithUsernameAndPassword,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (registerWithUsernameAndPassword != null) {
      return registerWithUsernameAndPassword(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithUsernameAndPassword value)
        signInWithUsernameAndPassword,
    required TResult Function(_RegisterWithUsernameAndPassword value)
        registerWithUsernameAndPassword,
    required TResult Function(_ClearError value) clearError,
  }) {
    return registerWithUsernameAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithUsernameAndPassword value)?
        signInWithUsernameAndPassword,
    TResult? Function(_RegisterWithUsernameAndPassword value)?
        registerWithUsernameAndPassword,
    TResult? Function(_ClearError value)? clearError,
  }) {
    return registerWithUsernameAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithUsernameAndPassword value)?
        signInWithUsernameAndPassword,
    TResult Function(_RegisterWithUsernameAndPassword value)?
        registerWithUsernameAndPassword,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (registerWithUsernameAndPassword != null) {
      return registerWithUsernameAndPassword(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithUsernameAndPassword implements LoginEvent {
  const factory _RegisterWithUsernameAndPassword(
      {required final String username,
      required final String password}) = _$_RegisterWithUsernameAndPassword;

  String get username;
  String get password;
  @JsonKey(ignore: true)
  _$$_RegisterWithUsernameAndPasswordCopyWith<
          _$_RegisterWithUsernameAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearErrorCopyWith<$Res> {
  factory _$$_ClearErrorCopyWith(
          _$_ClearError value, $Res Function(_$_ClearError) then) =
      __$$_ClearErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearErrorCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_ClearError>
    implements _$$_ClearErrorCopyWith<$Res> {
  __$$_ClearErrorCopyWithImpl(
      _$_ClearError _value, $Res Function(_$_ClearError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearError implements _ClearError {
  const _$_ClearError();

  @override
  String toString() {
    return 'LoginEvent.clearError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInAnonymously,
    required TResult Function() signInWithGoogle,
    required TResult Function(String username, String password)
        signInWithUsernameAndPassword,
    required TResult Function(String username, String password)
        registerWithUsernameAndPassword,
    required TResult Function() clearError,
  }) {
    return clearError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInAnonymously,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String username, String password)?
        signInWithUsernameAndPassword,
    TResult? Function(String username, String password)?
        registerWithUsernameAndPassword,
    TResult? Function()? clearError,
  }) {
    return clearError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInAnonymously,
    TResult Function()? signInWithGoogle,
    TResult Function(String username, String password)?
        signInWithUsernameAndPassword,
    TResult Function(String username, String password)?
        registerWithUsernameAndPassword,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithUsernameAndPassword value)
        signInWithUsernameAndPassword,
    required TResult Function(_RegisterWithUsernameAndPassword value)
        registerWithUsernameAndPassword,
    required TResult Function(_ClearError value) clearError,
  }) {
    return clearError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithUsernameAndPassword value)?
        signInWithUsernameAndPassword,
    TResult? Function(_RegisterWithUsernameAndPassword value)?
        registerWithUsernameAndPassword,
    TResult? Function(_ClearError value)? clearError,
  }) {
    return clearError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithUsernameAndPassword value)?
        signInWithUsernameAndPassword,
    TResult Function(_RegisterWithUsernameAndPassword value)?
        registerWithUsernameAndPassword,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError(this);
    }
    return orElse();
  }
}

abstract class _ClearError implements LoginEvent {
  const factory _ClearError() = _$_ClearError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthFailure failure) failure,
    required TResult Function(AppUser user) success,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthFailure failure)? failure,
    TResult? Function(AppUser user)? success,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthFailure failure)? failure,
    TResult Function(AppUser user)? success,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginFailure value) failure,
    required TResult Function(LoginSuccess value) success,
    required TResult Function(LoginLoding value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginFailure value)? failure,
    TResult? Function(LoginSuccess value)? success,
    TResult? Function(LoginLoding value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginFailure value)? failure,
    TResult Function(LoginSuccess value)? success,
    TResult Function(LoginLoding value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthFailure failure) failure,
    required TResult Function(AppUser user) success,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthFailure failure)? failure,
    TResult? Function(AppUser user)? success,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthFailure failure)? failure,
    TResult Function(AppUser user)? success,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginFailure value) failure,
    required TResult Function(LoginSuccess value) success,
    required TResult Function(LoginLoding value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginFailure value)? failure,
    TResult? Function(LoginSuccess value)? success,
    TResult? Function(LoginLoding value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginFailure value)? failure,
    TResult Function(LoginSuccess value)? success,
    TResult Function(LoginLoding value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$LoginFailureCopyWith<$Res> {
  factory _$$LoginFailureCopyWith(
          _$LoginFailure value, $Res Function(_$LoginFailure) then) =
      __$$LoginFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthFailure failure});

  $AuthFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$LoginFailureCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginFailure>
    implements _$$LoginFailureCopyWith<$Res> {
  __$$LoginFailureCopyWithImpl(
      _$LoginFailure _value, $Res Function(_$LoginFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$LoginFailure(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthFailureCopyWith<$Res> get failure {
    return $AuthFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$LoginFailure implements LoginFailure {
  const _$LoginFailure({required this.failure});

  @override
  final AuthFailure failure;

  @override
  String toString() {
    return 'LoginState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFailureCopyWith<_$LoginFailure> get copyWith =>
      __$$LoginFailureCopyWithImpl<_$LoginFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthFailure failure) failure,
    required TResult Function(AppUser user) success,
    required TResult Function() loading,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthFailure failure)? failure,
    TResult? Function(AppUser user)? success,
    TResult? Function()? loading,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthFailure failure)? failure,
    TResult Function(AppUser user)? success,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginFailure value) failure,
    required TResult Function(LoginSuccess value) success,
    required TResult Function(LoginLoding value) loading,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginFailure value)? failure,
    TResult? Function(LoginSuccess value)? success,
    TResult? Function(LoginLoding value)? loading,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginFailure value)? failure,
    TResult Function(LoginSuccess value)? success,
    TResult Function(LoginLoding value)? loading,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class LoginFailure implements LoginState {
  const factory LoginFailure({required final AuthFailure failure}) =
      _$LoginFailure;

  AuthFailure get failure;
  @JsonKey(ignore: true)
  _$$LoginFailureCopyWith<_$LoginFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSuccessCopyWith<$Res> {
  factory _$$LoginSuccessCopyWith(
          _$LoginSuccess value, $Res Function(_$LoginSuccess) then) =
      __$$LoginSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});
}

/// @nodoc
class __$$LoginSuccessCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginSuccess>
    implements _$$LoginSuccessCopyWith<$Res> {
  __$$LoginSuccessCopyWithImpl(
      _$LoginSuccess _value, $Res Function(_$LoginSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoginSuccess(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc

class _$LoginSuccess implements LoginSuccess {
  const _$LoginSuccess({required this.user});

  @override
  final AppUser user;

  @override
  String toString() {
    return 'LoginState.success(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccess &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessCopyWith<_$LoginSuccess> get copyWith =>
      __$$LoginSuccessCopyWithImpl<_$LoginSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthFailure failure) failure,
    required TResult Function(AppUser user) success,
    required TResult Function() loading,
  }) {
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthFailure failure)? failure,
    TResult? Function(AppUser user)? success,
    TResult? Function()? loading,
  }) {
    return success?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthFailure failure)? failure,
    TResult Function(AppUser user)? success,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginFailure value) failure,
    required TResult Function(LoginSuccess value) success,
    required TResult Function(LoginLoding value) loading,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginFailure value)? failure,
    TResult? Function(LoginSuccess value)? success,
    TResult? Function(LoginLoding value)? loading,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginFailure value)? failure,
    TResult Function(LoginSuccess value)? success,
    TResult Function(LoginLoding value)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LoginSuccess implements LoginState {
  const factory LoginSuccess({required final AppUser user}) = _$LoginSuccess;

  AppUser get user;
  @JsonKey(ignore: true)
  _$$LoginSuccessCopyWith<_$LoginSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginLodingCopyWith<$Res> {
  factory _$$LoginLodingCopyWith(
          _$LoginLoding value, $Res Function(_$LoginLoding) then) =
      __$$LoginLodingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginLodingCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginLoding>
    implements _$$LoginLodingCopyWith<$Res> {
  __$$LoginLodingCopyWithImpl(
      _$LoginLoding _value, $Res Function(_$LoginLoding) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginLoding implements LoginLoding {
  const _$LoginLoding();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoding);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthFailure failure) failure,
    required TResult Function(AppUser user) success,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthFailure failure)? failure,
    TResult? Function(AppUser user)? success,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthFailure failure)? failure,
    TResult Function(AppUser user)? success,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginFailure value) failure,
    required TResult Function(LoginSuccess value) success,
    required TResult Function(LoginLoding value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginFailure value)? failure,
    TResult? Function(LoginSuccess value)? success,
    TResult? Function(LoginLoding value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginFailure value)? failure,
    TResult Function(LoginSuccess value)? success,
    TResult Function(LoginLoding value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginLoding implements LoginState {
  const factory LoginLoding() = _$LoginLoding;
}
