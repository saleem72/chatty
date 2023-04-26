// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'HomeEvent.logout()';
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
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements HomeEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggedOut,
    required TResult Function(AppUser user) loaded,
    required TResult Function(AppUser user) loading,
    required TResult Function(AppUser user) newUser,
    required TResult Function(HomeFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggedOut,
    TResult? Function(AppUser user)? loaded,
    TResult? Function(AppUser user)? loading,
    TResult? Function(AppUser user)? newUser,
    TResult? Function(HomeFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggedOut,
    TResult Function(AppUser user)? loaded,
    TResult Function(AppUser user)? loading,
    TResult Function(AppUser user)? newUser,
    TResult Function(HomeFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeLoggedOut value) loggedOut,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(NewUserState value) newUser,
    required TResult Function(HomeFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeLoggedOut value)? loggedOut,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(NewUserState value)? newUser,
    TResult? Function(HomeFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeLoggedOut value)? loggedOut,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(NewUserState value)? newUser,
    TResult Function(HomeFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

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
    extends _$HomeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'HomeState.initial()';
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
    required TResult Function() loggedOut,
    required TResult Function(AppUser user) loaded,
    required TResult Function(AppUser user) loading,
    required TResult Function(AppUser user) newUser,
    required TResult Function(HomeFailure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggedOut,
    TResult? Function(AppUser user)? loaded,
    TResult? Function(AppUser user)? loading,
    TResult? Function(AppUser user)? newUser,
    TResult? Function(HomeFailure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggedOut,
    TResult Function(AppUser user)? loaded,
    TResult Function(AppUser user)? loading,
    TResult Function(AppUser user)? newUser,
    TResult Function(HomeFailure failure)? failure,
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
    required TResult Function(HomeLoggedOut value) loggedOut,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(NewUserState value) newUser,
    required TResult Function(HomeFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeLoggedOut value)? loggedOut,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(NewUserState value)? newUser,
    TResult? Function(HomeFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeLoggedOut value)? loggedOut,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(NewUserState value)? newUser,
    TResult Function(HomeFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$HomeLoggedOutCopyWith<$Res> {
  factory _$$HomeLoggedOutCopyWith(
          _$HomeLoggedOut value, $Res Function(_$HomeLoggedOut) then) =
      __$$HomeLoggedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeLoggedOutCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoggedOut>
    implements _$$HomeLoggedOutCopyWith<$Res> {
  __$$HomeLoggedOutCopyWithImpl(
      _$HomeLoggedOut _value, $Res Function(_$HomeLoggedOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeLoggedOut implements HomeLoggedOut {
  const _$HomeLoggedOut();

  @override
  String toString() {
    return 'HomeState.loggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeLoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggedOut,
    required TResult Function(AppUser user) loaded,
    required TResult Function(AppUser user) loading,
    required TResult Function(AppUser user) newUser,
    required TResult Function(HomeFailure failure) failure,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggedOut,
    TResult? Function(AppUser user)? loaded,
    TResult? Function(AppUser user)? loading,
    TResult? Function(AppUser user)? newUser,
    TResult? Function(HomeFailure failure)? failure,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggedOut,
    TResult Function(AppUser user)? loaded,
    TResult Function(AppUser user)? loading,
    TResult Function(AppUser user)? newUser,
    TResult Function(HomeFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeLoggedOut value) loggedOut,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(NewUserState value) newUser,
    required TResult Function(HomeFailureState value) failure,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeLoggedOut value)? loggedOut,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(NewUserState value)? newUser,
    TResult? Function(HomeFailureState value)? failure,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeLoggedOut value)? loggedOut,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(NewUserState value)? newUser,
    TResult Function(HomeFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class HomeLoggedOut implements HomeState {
  const factory HomeLoggedOut() = _$HomeLoggedOut;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_Loaded(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required this.user});

  @override
  final AppUser user;

  @override
  String toString() {
    return 'HomeState.loaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggedOut,
    required TResult Function(AppUser user) loaded,
    required TResult Function(AppUser user) loading,
    required TResult Function(AppUser user) newUser,
    required TResult Function(HomeFailure failure) failure,
  }) {
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggedOut,
    TResult? Function(AppUser user)? loaded,
    TResult? Function(AppUser user)? loading,
    TResult? Function(AppUser user)? newUser,
    TResult? Function(HomeFailure failure)? failure,
  }) {
    return loaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggedOut,
    TResult Function(AppUser user)? loaded,
    TResult Function(AppUser user)? loading,
    TResult Function(AppUser user)? newUser,
    TResult Function(HomeFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeLoggedOut value) loggedOut,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(NewUserState value) newUser,
    required TResult Function(HomeFailureState value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeLoggedOut value)? loggedOut,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(NewUserState value)? newUser,
    TResult? Function(HomeFailureState value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeLoggedOut value)? loggedOut,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(NewUserState value)? newUser,
    TResult Function(HomeFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements HomeState {
  const factory _Loaded({required final AppUser user}) = _$_Loaded;

  AppUser get user;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_Loading(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({required this.user});

  @override
  final AppUser user;

  @override
  String toString() {
    return 'HomeState.loading(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggedOut,
    required TResult Function(AppUser user) loaded,
    required TResult Function(AppUser user) loading,
    required TResult Function(AppUser user) newUser,
    required TResult Function(HomeFailure failure) failure,
  }) {
    return loading(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggedOut,
    TResult? Function(AppUser user)? loaded,
    TResult? Function(AppUser user)? loading,
    TResult? Function(AppUser user)? newUser,
    TResult? Function(HomeFailure failure)? failure,
  }) {
    return loading?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggedOut,
    TResult Function(AppUser user)? loaded,
    TResult Function(AppUser user)? loading,
    TResult Function(AppUser user)? newUser,
    TResult Function(HomeFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeLoggedOut value) loggedOut,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(NewUserState value) newUser,
    required TResult Function(HomeFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeLoggedOut value)? loggedOut,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(NewUserState value)? newUser,
    TResult? Function(HomeFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeLoggedOut value)? loggedOut,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(NewUserState value)? newUser,
    TResult Function(HomeFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeState {
  const factory _Loading({required final AppUser user}) = _$_Loading;

  AppUser get user;
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewUserStateCopyWith<$Res> {
  factory _$$NewUserStateCopyWith(
          _$NewUserState value, $Res Function(_$NewUserState) then) =
      __$$NewUserStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});
}

/// @nodoc
class __$$NewUserStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$NewUserState>
    implements _$$NewUserStateCopyWith<$Res> {
  __$$NewUserStateCopyWithImpl(
      _$NewUserState _value, $Res Function(_$NewUserState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$NewUserState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc

class _$NewUserState implements NewUserState {
  const _$NewUserState({required this.user});

  @override
  final AppUser user;

  @override
  String toString() {
    return 'HomeState.newUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewUserState &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewUserStateCopyWith<_$NewUserState> get copyWith =>
      __$$NewUserStateCopyWithImpl<_$NewUserState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggedOut,
    required TResult Function(AppUser user) loaded,
    required TResult Function(AppUser user) loading,
    required TResult Function(AppUser user) newUser,
    required TResult Function(HomeFailure failure) failure,
  }) {
    return newUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggedOut,
    TResult? Function(AppUser user)? loaded,
    TResult? Function(AppUser user)? loading,
    TResult? Function(AppUser user)? newUser,
    TResult? Function(HomeFailure failure)? failure,
  }) {
    return newUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggedOut,
    TResult Function(AppUser user)? loaded,
    TResult Function(AppUser user)? loading,
    TResult Function(AppUser user)? newUser,
    TResult Function(HomeFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (newUser != null) {
      return newUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeLoggedOut value) loggedOut,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(NewUserState value) newUser,
    required TResult Function(HomeFailureState value) failure,
  }) {
    return newUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeLoggedOut value)? loggedOut,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(NewUserState value)? newUser,
    TResult? Function(HomeFailureState value)? failure,
  }) {
    return newUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeLoggedOut value)? loggedOut,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(NewUserState value)? newUser,
    TResult Function(HomeFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (newUser != null) {
      return newUser(this);
    }
    return orElse();
  }
}

abstract class NewUserState implements HomeState {
  const factory NewUserState({required final AppUser user}) = _$NewUserState;

  AppUser get user;
  @JsonKey(ignore: true)
  _$$NewUserStateCopyWith<_$NewUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeFailureStateCopyWith<$Res> {
  factory _$$HomeFailureStateCopyWith(
          _$HomeFailureState value, $Res Function(_$HomeFailureState) then) =
      __$$HomeFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({HomeFailure failure});

  $HomeFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$HomeFailureStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeFailureState>
    implements _$$HomeFailureStateCopyWith<$Res> {
  __$$HomeFailureStateCopyWithImpl(
      _$HomeFailureState _value, $Res Function(_$HomeFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$HomeFailureState(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as HomeFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeFailureCopyWith<$Res> get failure {
    return $HomeFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$HomeFailureState implements HomeFailureState {
  const _$HomeFailureState({required this.failure});

  @override
  final HomeFailure failure;

  @override
  String toString() {
    return 'HomeState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeFailureState &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeFailureStateCopyWith<_$HomeFailureState> get copyWith =>
      __$$HomeFailureStateCopyWithImpl<_$HomeFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggedOut,
    required TResult Function(AppUser user) loaded,
    required TResult Function(AppUser user) loading,
    required TResult Function(AppUser user) newUser,
    required TResult Function(HomeFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggedOut,
    TResult? Function(AppUser user)? loaded,
    TResult? Function(AppUser user)? loading,
    TResult? Function(AppUser user)? newUser,
    TResult? Function(HomeFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggedOut,
    TResult Function(AppUser user)? loaded,
    TResult Function(AppUser user)? loading,
    TResult Function(AppUser user)? newUser,
    TResult Function(HomeFailure failure)? failure,
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
    required TResult Function(HomeLoggedOut value) loggedOut,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(NewUserState value) newUser,
    required TResult Function(HomeFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeLoggedOut value)? loggedOut,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(NewUserState value)? newUser,
    TResult? Function(HomeFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeLoggedOut value)? loggedOut,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(NewUserState value)? newUser,
    TResult Function(HomeFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class HomeFailureState implements HomeState {
  const factory HomeFailureState({required final HomeFailure failure}) =
      _$HomeFailureState;

  HomeFailure get failure;
  @JsonKey(ignore: true)
  _$$HomeFailureStateCopyWith<_$HomeFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
