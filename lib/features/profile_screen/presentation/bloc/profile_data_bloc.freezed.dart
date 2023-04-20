// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser user) userHasChanged,
    required TResult Function(String name) nameHasChanged,
    required TResult Function(String email) emailHasChanged,
    required TResult Function(String about) aboutHasChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppUser user)? userHasChanged,
    TResult? Function(String name)? nameHasChanged,
    TResult? Function(String email)? emailHasChanged,
    TResult? Function(String about)? aboutHasChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser user)? userHasChanged,
    TResult Function(String name)? nameHasChanged,
    TResult Function(String email)? emailHasChanged,
    TResult Function(String about)? aboutHasChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserHasChanged value) userHasChanged,
    required TResult Function(_NameHasChanged value) nameHasChanged,
    required TResult Function(_EmailHasChanged value) emailHasChanged,
    required TResult Function(_AboutHasChanged value) aboutHasChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserHasChanged value)? userHasChanged,
    TResult? Function(_NameHasChanged value)? nameHasChanged,
    TResult? Function(_EmailHasChanged value)? emailHasChanged,
    TResult? Function(_AboutHasChanged value)? aboutHasChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserHasChanged value)? userHasChanged,
    TResult Function(_NameHasChanged value)? nameHasChanged,
    TResult Function(_EmailHasChanged value)? emailHasChanged,
    TResult Function(_AboutHasChanged value)? aboutHasChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDataEventCopyWith<$Res> {
  factory $ProfileDataEventCopyWith(
          ProfileDataEvent value, $Res Function(ProfileDataEvent) then) =
      _$ProfileDataEventCopyWithImpl<$Res, ProfileDataEvent>;
}

/// @nodoc
class _$ProfileDataEventCopyWithImpl<$Res, $Val extends ProfileDataEvent>
    implements $ProfileDataEventCopyWith<$Res> {
  _$ProfileDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserHasChangedCopyWith<$Res> {
  factory _$$_UserHasChangedCopyWith(
          _$_UserHasChanged value, $Res Function(_$_UserHasChanged) then) =
      __$$_UserHasChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});
}

/// @nodoc
class __$$_UserHasChangedCopyWithImpl<$Res>
    extends _$ProfileDataEventCopyWithImpl<$Res, _$_UserHasChanged>
    implements _$$_UserHasChangedCopyWith<$Res> {
  __$$_UserHasChangedCopyWithImpl(
      _$_UserHasChanged _value, $Res Function(_$_UserHasChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_UserHasChanged(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc

class _$_UserHasChanged implements _UserHasChanged {
  const _$_UserHasChanged({required this.user});

  @override
  final AppUser user;

  @override
  String toString() {
    return 'ProfileDataEvent.userHasChanged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserHasChanged &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserHasChangedCopyWith<_$_UserHasChanged> get copyWith =>
      __$$_UserHasChangedCopyWithImpl<_$_UserHasChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser user) userHasChanged,
    required TResult Function(String name) nameHasChanged,
    required TResult Function(String email) emailHasChanged,
    required TResult Function(String about) aboutHasChanged,
  }) {
    return userHasChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppUser user)? userHasChanged,
    TResult? Function(String name)? nameHasChanged,
    TResult? Function(String email)? emailHasChanged,
    TResult? Function(String about)? aboutHasChanged,
  }) {
    return userHasChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser user)? userHasChanged,
    TResult Function(String name)? nameHasChanged,
    TResult Function(String email)? emailHasChanged,
    TResult Function(String about)? aboutHasChanged,
    required TResult orElse(),
  }) {
    if (userHasChanged != null) {
      return userHasChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserHasChanged value) userHasChanged,
    required TResult Function(_NameHasChanged value) nameHasChanged,
    required TResult Function(_EmailHasChanged value) emailHasChanged,
    required TResult Function(_AboutHasChanged value) aboutHasChanged,
  }) {
    return userHasChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserHasChanged value)? userHasChanged,
    TResult? Function(_NameHasChanged value)? nameHasChanged,
    TResult? Function(_EmailHasChanged value)? emailHasChanged,
    TResult? Function(_AboutHasChanged value)? aboutHasChanged,
  }) {
    return userHasChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserHasChanged value)? userHasChanged,
    TResult Function(_NameHasChanged value)? nameHasChanged,
    TResult Function(_EmailHasChanged value)? emailHasChanged,
    TResult Function(_AboutHasChanged value)? aboutHasChanged,
    required TResult orElse(),
  }) {
    if (userHasChanged != null) {
      return userHasChanged(this);
    }
    return orElse();
  }
}

abstract class _UserHasChanged implements ProfileDataEvent {
  const factory _UserHasChanged({required final AppUser user}) =
      _$_UserHasChanged;

  AppUser get user;
  @JsonKey(ignore: true)
  _$$_UserHasChangedCopyWith<_$_UserHasChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NameHasChangedCopyWith<$Res> {
  factory _$$_NameHasChangedCopyWith(
          _$_NameHasChanged value, $Res Function(_$_NameHasChanged) then) =
      __$$_NameHasChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_NameHasChangedCopyWithImpl<$Res>
    extends _$ProfileDataEventCopyWithImpl<$Res, _$_NameHasChanged>
    implements _$$_NameHasChangedCopyWith<$Res> {
  __$$_NameHasChangedCopyWithImpl(
      _$_NameHasChanged _value, $Res Function(_$_NameHasChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_NameHasChanged(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameHasChanged implements _NameHasChanged {
  const _$_NameHasChanged({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'ProfileDataEvent.nameHasChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameHasChanged &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameHasChangedCopyWith<_$_NameHasChanged> get copyWith =>
      __$$_NameHasChangedCopyWithImpl<_$_NameHasChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser user) userHasChanged,
    required TResult Function(String name) nameHasChanged,
    required TResult Function(String email) emailHasChanged,
    required TResult Function(String about) aboutHasChanged,
  }) {
    return nameHasChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppUser user)? userHasChanged,
    TResult? Function(String name)? nameHasChanged,
    TResult? Function(String email)? emailHasChanged,
    TResult? Function(String about)? aboutHasChanged,
  }) {
    return nameHasChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser user)? userHasChanged,
    TResult Function(String name)? nameHasChanged,
    TResult Function(String email)? emailHasChanged,
    TResult Function(String about)? aboutHasChanged,
    required TResult orElse(),
  }) {
    if (nameHasChanged != null) {
      return nameHasChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserHasChanged value) userHasChanged,
    required TResult Function(_NameHasChanged value) nameHasChanged,
    required TResult Function(_EmailHasChanged value) emailHasChanged,
    required TResult Function(_AboutHasChanged value) aboutHasChanged,
  }) {
    return nameHasChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserHasChanged value)? userHasChanged,
    TResult? Function(_NameHasChanged value)? nameHasChanged,
    TResult? Function(_EmailHasChanged value)? emailHasChanged,
    TResult? Function(_AboutHasChanged value)? aboutHasChanged,
  }) {
    return nameHasChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserHasChanged value)? userHasChanged,
    TResult Function(_NameHasChanged value)? nameHasChanged,
    TResult Function(_EmailHasChanged value)? emailHasChanged,
    TResult Function(_AboutHasChanged value)? aboutHasChanged,
    required TResult orElse(),
  }) {
    if (nameHasChanged != null) {
      return nameHasChanged(this);
    }
    return orElse();
  }
}

abstract class _NameHasChanged implements ProfileDataEvent {
  const factory _NameHasChanged({required final String name}) =
      _$_NameHasChanged;

  String get name;
  @JsonKey(ignore: true)
  _$$_NameHasChangedCopyWith<_$_NameHasChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmailHasChangedCopyWith<$Res> {
  factory _$$_EmailHasChangedCopyWith(
          _$_EmailHasChanged value, $Res Function(_$_EmailHasChanged) then) =
      __$$_EmailHasChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_EmailHasChangedCopyWithImpl<$Res>
    extends _$ProfileDataEventCopyWithImpl<$Res, _$_EmailHasChanged>
    implements _$$_EmailHasChangedCopyWith<$Res> {
  __$$_EmailHasChangedCopyWithImpl(
      _$_EmailHasChanged _value, $Res Function(_$_EmailHasChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_EmailHasChanged(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailHasChanged implements _EmailHasChanged {
  const _$_EmailHasChanged({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'ProfileDataEvent.emailHasChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailHasChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailHasChangedCopyWith<_$_EmailHasChanged> get copyWith =>
      __$$_EmailHasChangedCopyWithImpl<_$_EmailHasChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser user) userHasChanged,
    required TResult Function(String name) nameHasChanged,
    required TResult Function(String email) emailHasChanged,
    required TResult Function(String about) aboutHasChanged,
  }) {
    return emailHasChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppUser user)? userHasChanged,
    TResult? Function(String name)? nameHasChanged,
    TResult? Function(String email)? emailHasChanged,
    TResult? Function(String about)? aboutHasChanged,
  }) {
    return emailHasChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser user)? userHasChanged,
    TResult Function(String name)? nameHasChanged,
    TResult Function(String email)? emailHasChanged,
    TResult Function(String about)? aboutHasChanged,
    required TResult orElse(),
  }) {
    if (emailHasChanged != null) {
      return emailHasChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserHasChanged value) userHasChanged,
    required TResult Function(_NameHasChanged value) nameHasChanged,
    required TResult Function(_EmailHasChanged value) emailHasChanged,
    required TResult Function(_AboutHasChanged value) aboutHasChanged,
  }) {
    return emailHasChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserHasChanged value)? userHasChanged,
    TResult? Function(_NameHasChanged value)? nameHasChanged,
    TResult? Function(_EmailHasChanged value)? emailHasChanged,
    TResult? Function(_AboutHasChanged value)? aboutHasChanged,
  }) {
    return emailHasChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserHasChanged value)? userHasChanged,
    TResult Function(_NameHasChanged value)? nameHasChanged,
    TResult Function(_EmailHasChanged value)? emailHasChanged,
    TResult Function(_AboutHasChanged value)? aboutHasChanged,
    required TResult orElse(),
  }) {
    if (emailHasChanged != null) {
      return emailHasChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailHasChanged implements ProfileDataEvent {
  const factory _EmailHasChanged({required final String email}) =
      _$_EmailHasChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$_EmailHasChangedCopyWith<_$_EmailHasChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AboutHasChangedCopyWith<$Res> {
  factory _$$_AboutHasChangedCopyWith(
          _$_AboutHasChanged value, $Res Function(_$_AboutHasChanged) then) =
      __$$_AboutHasChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String about});
}

/// @nodoc
class __$$_AboutHasChangedCopyWithImpl<$Res>
    extends _$ProfileDataEventCopyWithImpl<$Res, _$_AboutHasChanged>
    implements _$$_AboutHasChangedCopyWith<$Res> {
  __$$_AboutHasChangedCopyWithImpl(
      _$_AboutHasChanged _value, $Res Function(_$_AboutHasChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? about = null,
  }) {
    return _then(_$_AboutHasChanged(
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AboutHasChanged implements _AboutHasChanged {
  const _$_AboutHasChanged({required this.about});

  @override
  final String about;

  @override
  String toString() {
    return 'ProfileDataEvent.aboutHasChanged(about: $about)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AboutHasChanged &&
            (identical(other.about, about) || other.about == about));
  }

  @override
  int get hashCode => Object.hash(runtimeType, about);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AboutHasChangedCopyWith<_$_AboutHasChanged> get copyWith =>
      __$$_AboutHasChangedCopyWithImpl<_$_AboutHasChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser user) userHasChanged,
    required TResult Function(String name) nameHasChanged,
    required TResult Function(String email) emailHasChanged,
    required TResult Function(String about) aboutHasChanged,
  }) {
    return aboutHasChanged(about);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppUser user)? userHasChanged,
    TResult? Function(String name)? nameHasChanged,
    TResult? Function(String email)? emailHasChanged,
    TResult? Function(String about)? aboutHasChanged,
  }) {
    return aboutHasChanged?.call(about);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser user)? userHasChanged,
    TResult Function(String name)? nameHasChanged,
    TResult Function(String email)? emailHasChanged,
    TResult Function(String about)? aboutHasChanged,
    required TResult orElse(),
  }) {
    if (aboutHasChanged != null) {
      return aboutHasChanged(about);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserHasChanged value) userHasChanged,
    required TResult Function(_NameHasChanged value) nameHasChanged,
    required TResult Function(_EmailHasChanged value) emailHasChanged,
    required TResult Function(_AboutHasChanged value) aboutHasChanged,
  }) {
    return aboutHasChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserHasChanged value)? userHasChanged,
    TResult? Function(_NameHasChanged value)? nameHasChanged,
    TResult? Function(_EmailHasChanged value)? emailHasChanged,
    TResult? Function(_AboutHasChanged value)? aboutHasChanged,
  }) {
    return aboutHasChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserHasChanged value)? userHasChanged,
    TResult Function(_NameHasChanged value)? nameHasChanged,
    TResult Function(_EmailHasChanged value)? emailHasChanged,
    TResult Function(_AboutHasChanged value)? aboutHasChanged,
    required TResult orElse(),
  }) {
    if (aboutHasChanged != null) {
      return aboutHasChanged(this);
    }
    return orElse();
  }
}

abstract class _AboutHasChanged implements ProfileDataEvent {
  const factory _AboutHasChanged({required final String about}) =
      _$_AboutHasChanged;

  String get about;
  @JsonKey(ignore: true)
  _$$_AboutHasChangedCopyWith<_$_AboutHasChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileDataState {
  Username get name => throw _privateConstructorUsedError;
  Email get email => throw _privateConstructorUsedError;
  String get about => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileDataStateCopyWith<ProfileDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDataStateCopyWith<$Res> {
  factory $ProfileDataStateCopyWith(
          ProfileDataState value, $Res Function(ProfileDataState) then) =
      _$ProfileDataStateCopyWithImpl<$Res, ProfileDataState>;
  @useResult
  $Res call({Username name, Email email, String about});

  $UsernameCopyWith<$Res> get name;
  $EmailCopyWith<$Res> get email;
}

/// @nodoc
class _$ProfileDataStateCopyWithImpl<$Res, $Val extends ProfileDataState>
    implements $ProfileDataStateCopyWith<$Res> {
  _$ProfileDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? about = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Username,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UsernameCopyWith<$Res> get name {
    return $UsernameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EmailCopyWith<$Res> get email {
    return $EmailCopyWith<$Res>(_value.email, (value) {
      return _then(_value.copyWith(email: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileDataStateCopyWith<$Res>
    implements $ProfileDataStateCopyWith<$Res> {
  factory _$$_ProfileDataStateCopyWith(
          _$_ProfileDataState value, $Res Function(_$_ProfileDataState) then) =
      __$$_ProfileDataStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Username name, Email email, String about});

  @override
  $UsernameCopyWith<$Res> get name;
  @override
  $EmailCopyWith<$Res> get email;
}

/// @nodoc
class __$$_ProfileDataStateCopyWithImpl<$Res>
    extends _$ProfileDataStateCopyWithImpl<$Res, _$_ProfileDataState>
    implements _$$_ProfileDataStateCopyWith<$Res> {
  __$$_ProfileDataStateCopyWithImpl(
      _$_ProfileDataState _value, $Res Function(_$_ProfileDataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? about = null,
  }) {
    return _then(_$_ProfileDataState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Username,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProfileDataState extends _ProfileDataState {
  const _$_ProfileDataState(
      {required this.name, required this.email, required this.about})
      : super._();

  @override
  final Username name;
  @override
  final Email email;
  @override
  final String about;

  @override
  String toString() {
    return 'ProfileDataState(name: $name, email: $email, about: $about)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileDataState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.about, about) || other.about == about));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, about);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileDataStateCopyWith<_$_ProfileDataState> get copyWith =>
      __$$_ProfileDataStateCopyWithImpl<_$_ProfileDataState>(this, _$identity);
}

abstract class _ProfileDataState extends ProfileDataState {
  const factory _ProfileDataState(
      {required final Username name,
      required final Email email,
      required final String about}) = _$_ProfileDataState;
  const _ProfileDataState._() : super._();

  @override
  Username get name;
  @override
  Email get email;
  @override
  String get about;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileDataStateCopyWith<_$_ProfileDataState> get copyWith =>
      throw _privateConstructorUsedError;
}
