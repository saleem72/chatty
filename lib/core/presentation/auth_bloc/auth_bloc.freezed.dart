// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkForAuthStatus,
    required TResult Function() signInAnonymously,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkForAuthStatus,
    TResult? Function()? signInAnonymously,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkForAuthStatus,
    TResult Function()? signInAnonymously,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckForAuthStatus value) checkForAuthStatus,
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckForAuthStatus value)? checkForAuthStatus,
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckForAuthStatus value)? checkForAuthStatus,
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CheckForAuthStatusCopyWith<$Res> {
  factory _$$_CheckForAuthStatusCopyWith(_$_CheckForAuthStatus value,
          $Res Function(_$_CheckForAuthStatus) then) =
      __$$_CheckForAuthStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckForAuthStatusCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_CheckForAuthStatus>
    implements _$$_CheckForAuthStatusCopyWith<$Res> {
  __$$_CheckForAuthStatusCopyWithImpl(
      _$_CheckForAuthStatus _value, $Res Function(_$_CheckForAuthStatus) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckForAuthStatus implements _CheckForAuthStatus {
  const _$_CheckForAuthStatus();

  @override
  String toString() {
    return 'AuthEvent.checkForAuthStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckForAuthStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkForAuthStatus,
    required TResult Function() signInAnonymously,
    required TResult Function() logout,
  }) {
    return checkForAuthStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkForAuthStatus,
    TResult? Function()? signInAnonymously,
    TResult? Function()? logout,
  }) {
    return checkForAuthStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkForAuthStatus,
    TResult Function()? signInAnonymously,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (checkForAuthStatus != null) {
      return checkForAuthStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckForAuthStatus value) checkForAuthStatus,
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_Logout value) logout,
  }) {
    return checkForAuthStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckForAuthStatus value)? checkForAuthStatus,
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_Logout value)? logout,
  }) {
    return checkForAuthStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckForAuthStatus value)? checkForAuthStatus,
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (checkForAuthStatus != null) {
      return checkForAuthStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckForAuthStatus implements AuthEvent {
  const factory _CheckForAuthStatus() = _$_CheckForAuthStatus;
}

/// @nodoc
abstract class _$$_SignInAnonymouslyCopyWith<$Res> {
  factory _$$_SignInAnonymouslyCopyWith(_$_SignInAnonymously value,
          $Res Function(_$_SignInAnonymously) then) =
      __$$_SignInAnonymouslyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInAnonymouslyCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignInAnonymously>
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
    return 'AuthEvent.signInAnonymously()';
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
    required TResult Function() checkForAuthStatus,
    required TResult Function() signInAnonymously,
    required TResult Function() logout,
  }) {
    return signInAnonymously();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkForAuthStatus,
    TResult? Function()? signInAnonymously,
    TResult? Function()? logout,
  }) {
    return signInAnonymously?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkForAuthStatus,
    TResult Function()? signInAnonymously,
    TResult Function()? logout,
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
    required TResult Function(_CheckForAuthStatus value) checkForAuthStatus,
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_Logout value) logout,
  }) {
    return signInAnonymously(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckForAuthStatus value)? checkForAuthStatus,
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_Logout value)? logout,
  }) {
    return signInAnonymously?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckForAuthStatus value)? checkForAuthStatus,
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (signInAnonymously != null) {
      return signInAnonymously(this);
    }
    return orElse();
  }
}

abstract class _SignInAnonymously implements AuthEvent {
  const factory _SignInAnonymously() = _$_SignInAnonymously;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkForAuthStatus,
    required TResult Function() signInAnonymously,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkForAuthStatus,
    TResult? Function()? signInAnonymously,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkForAuthStatus,
    TResult Function()? signInAnonymously,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckForAuthStatus value) checkForAuthStatus,
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckForAuthStatus value)? checkForAuthStatus,
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckForAuthStatus value)? checkForAuthStatus,
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$_Logout;
}
