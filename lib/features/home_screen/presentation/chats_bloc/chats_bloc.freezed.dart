// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chats_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) subscribe,
    required TResult Function(List<Chat> chats) updateState,
    required TResult Function() checkUp,
    required TResult Function() goOffline,
    required TResult Function() goOnline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? subscribe,
    TResult? Function(List<Chat> chats)? updateState,
    TResult? Function()? checkUp,
    TResult? Function()? goOffline,
    TResult? Function()? goOnline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? subscribe,
    TResult Function(List<Chat> chats)? updateState,
    TResult Function()? checkUp,
    TResult Function()? goOffline,
    TResult Function()? goOnline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_UpdateState value) updateState,
    required TResult Function(_CheckUp value) checkUp,
    required TResult Function(_GoOffline value) goOffline,
    required TResult Function(_GoOnline value) goOnline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_UpdateState value)? updateState,
    TResult? Function(_CheckUp value)? checkUp,
    TResult? Function(_GoOffline value)? goOffline,
    TResult? Function(_GoOnline value)? goOnline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_UpdateState value)? updateState,
    TResult Function(_CheckUp value)? checkUp,
    TResult Function(_GoOffline value)? goOffline,
    TResult Function(_GoOnline value)? goOnline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsEventCopyWith<$Res> {
  factory $ChatsEventCopyWith(
          ChatsEvent value, $Res Function(ChatsEvent) then) =
      _$ChatsEventCopyWithImpl<$Res, ChatsEvent>;
}

/// @nodoc
class _$ChatsEventCopyWithImpl<$Res, $Val extends ChatsEvent>
    implements $ChatsEventCopyWith<$Res> {
  _$ChatsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SubscribeCopyWith<$Res> {
  factory _$$_SubscribeCopyWith(
          _$_Subscribe value, $Res Function(_$_Subscribe) then) =
      __$$_SubscribeCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$_SubscribeCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res, _$_Subscribe>
    implements _$$_SubscribeCopyWith<$Res> {
  __$$_SubscribeCopyWithImpl(
      _$_Subscribe _value, $Res Function(_$_Subscribe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$_Subscribe(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Subscribe implements _Subscribe {
  const _$_Subscribe({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'ChatsEvent.subscribe(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Subscribe &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubscribeCopyWith<_$_Subscribe> get copyWith =>
      __$$_SubscribeCopyWithImpl<_$_Subscribe>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) subscribe,
    required TResult Function(List<Chat> chats) updateState,
    required TResult Function() checkUp,
    required TResult Function() goOffline,
    required TResult Function() goOnline,
  }) {
    return subscribe(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? subscribe,
    TResult? Function(List<Chat> chats)? updateState,
    TResult? Function()? checkUp,
    TResult? Function()? goOffline,
    TResult? Function()? goOnline,
  }) {
    return subscribe?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? subscribe,
    TResult Function(List<Chat> chats)? updateState,
    TResult Function()? checkUp,
    TResult Function()? goOffline,
    TResult Function()? goOnline,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_UpdateState value) updateState,
    required TResult Function(_CheckUp value) checkUp,
    required TResult Function(_GoOffline value) goOffline,
    required TResult Function(_GoOnline value) goOnline,
  }) {
    return subscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_UpdateState value)? updateState,
    TResult? Function(_CheckUp value)? checkUp,
    TResult? Function(_GoOffline value)? goOffline,
    TResult? Function(_GoOnline value)? goOnline,
  }) {
    return subscribe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_UpdateState value)? updateState,
    TResult Function(_CheckUp value)? checkUp,
    TResult Function(_GoOffline value)? goOffline,
    TResult Function(_GoOnline value)? goOnline,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(this);
    }
    return orElse();
  }
}

abstract class _Subscribe implements ChatsEvent {
  const factory _Subscribe({required final String userId}) = _$_Subscribe;

  String get userId;
  @JsonKey(ignore: true)
  _$$_SubscribeCopyWith<_$_Subscribe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateStateCopyWith<$Res> {
  factory _$$_UpdateStateCopyWith(
          _$_UpdateState value, $Res Function(_$_UpdateState) then) =
      __$$_UpdateStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Chat> chats});
}

/// @nodoc
class __$$_UpdateStateCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res, _$_UpdateState>
    implements _$$_UpdateStateCopyWith<$Res> {
  __$$_UpdateStateCopyWithImpl(
      _$_UpdateState _value, $Res Function(_$_UpdateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
  }) {
    return _then(_$_UpdateState(
      chats: null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
    ));
  }
}

/// @nodoc

class _$_UpdateState implements _UpdateState {
  const _$_UpdateState({required final List<Chat> chats}) : _chats = chats;

  final List<Chat> _chats;
  @override
  List<Chat> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  @override
  String toString() {
    return 'ChatsEvent.updateState(chats: $chats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateState &&
            const DeepCollectionEquality().equals(other._chats, _chats));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateStateCopyWith<_$_UpdateState> get copyWith =>
      __$$_UpdateStateCopyWithImpl<_$_UpdateState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) subscribe,
    required TResult Function(List<Chat> chats) updateState,
    required TResult Function() checkUp,
    required TResult Function() goOffline,
    required TResult Function() goOnline,
  }) {
    return updateState(chats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? subscribe,
    TResult? Function(List<Chat> chats)? updateState,
    TResult? Function()? checkUp,
    TResult? Function()? goOffline,
    TResult? Function()? goOnline,
  }) {
    return updateState?.call(chats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? subscribe,
    TResult Function(List<Chat> chats)? updateState,
    TResult Function()? checkUp,
    TResult Function()? goOffline,
    TResult Function()? goOnline,
    required TResult orElse(),
  }) {
    if (updateState != null) {
      return updateState(chats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_UpdateState value) updateState,
    required TResult Function(_CheckUp value) checkUp,
    required TResult Function(_GoOffline value) goOffline,
    required TResult Function(_GoOnline value) goOnline,
  }) {
    return updateState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_UpdateState value)? updateState,
    TResult? Function(_CheckUp value)? checkUp,
    TResult? Function(_GoOffline value)? goOffline,
    TResult? Function(_GoOnline value)? goOnline,
  }) {
    return updateState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_UpdateState value)? updateState,
    TResult Function(_CheckUp value)? checkUp,
    TResult Function(_GoOffline value)? goOffline,
    TResult Function(_GoOnline value)? goOnline,
    required TResult orElse(),
  }) {
    if (updateState != null) {
      return updateState(this);
    }
    return orElse();
  }
}

abstract class _UpdateState implements ChatsEvent {
  const factory _UpdateState({required final List<Chat> chats}) =
      _$_UpdateState;

  List<Chat> get chats;
  @JsonKey(ignore: true)
  _$$_UpdateStateCopyWith<_$_UpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CheckUpCopyWith<$Res> {
  factory _$$_CheckUpCopyWith(
          _$_CheckUp value, $Res Function(_$_CheckUp) then) =
      __$$_CheckUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckUpCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res, _$_CheckUp>
    implements _$$_CheckUpCopyWith<$Res> {
  __$$_CheckUpCopyWithImpl(_$_CheckUp _value, $Res Function(_$_CheckUp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckUp implements _CheckUp {
  const _$_CheckUp();

  @override
  String toString() {
    return 'ChatsEvent.checkUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) subscribe,
    required TResult Function(List<Chat> chats) updateState,
    required TResult Function() checkUp,
    required TResult Function() goOffline,
    required TResult Function() goOnline,
  }) {
    return checkUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? subscribe,
    TResult? Function(List<Chat> chats)? updateState,
    TResult? Function()? checkUp,
    TResult? Function()? goOffline,
    TResult? Function()? goOnline,
  }) {
    return checkUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? subscribe,
    TResult Function(List<Chat> chats)? updateState,
    TResult Function()? checkUp,
    TResult Function()? goOffline,
    TResult Function()? goOnline,
    required TResult orElse(),
  }) {
    if (checkUp != null) {
      return checkUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_UpdateState value) updateState,
    required TResult Function(_CheckUp value) checkUp,
    required TResult Function(_GoOffline value) goOffline,
    required TResult Function(_GoOnline value) goOnline,
  }) {
    return checkUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_UpdateState value)? updateState,
    TResult? Function(_CheckUp value)? checkUp,
    TResult? Function(_GoOffline value)? goOffline,
    TResult? Function(_GoOnline value)? goOnline,
  }) {
    return checkUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_UpdateState value)? updateState,
    TResult Function(_CheckUp value)? checkUp,
    TResult Function(_GoOffline value)? goOffline,
    TResult Function(_GoOnline value)? goOnline,
    required TResult orElse(),
  }) {
    if (checkUp != null) {
      return checkUp(this);
    }
    return orElse();
  }
}

abstract class _CheckUp implements ChatsEvent {
  const factory _CheckUp() = _$_CheckUp;
}

/// @nodoc
abstract class _$$_GoOfflineCopyWith<$Res> {
  factory _$$_GoOfflineCopyWith(
          _$_GoOffline value, $Res Function(_$_GoOffline) then) =
      __$$_GoOfflineCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GoOfflineCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res, _$_GoOffline>
    implements _$$_GoOfflineCopyWith<$Res> {
  __$$_GoOfflineCopyWithImpl(
      _$_GoOffline _value, $Res Function(_$_GoOffline) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GoOffline implements _GoOffline {
  const _$_GoOffline();

  @override
  String toString() {
    return 'ChatsEvent.goOffline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GoOffline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) subscribe,
    required TResult Function(List<Chat> chats) updateState,
    required TResult Function() checkUp,
    required TResult Function() goOffline,
    required TResult Function() goOnline,
  }) {
    return goOffline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? subscribe,
    TResult? Function(List<Chat> chats)? updateState,
    TResult? Function()? checkUp,
    TResult? Function()? goOffline,
    TResult? Function()? goOnline,
  }) {
    return goOffline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? subscribe,
    TResult Function(List<Chat> chats)? updateState,
    TResult Function()? checkUp,
    TResult Function()? goOffline,
    TResult Function()? goOnline,
    required TResult orElse(),
  }) {
    if (goOffline != null) {
      return goOffline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_UpdateState value) updateState,
    required TResult Function(_CheckUp value) checkUp,
    required TResult Function(_GoOffline value) goOffline,
    required TResult Function(_GoOnline value) goOnline,
  }) {
    return goOffline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_UpdateState value)? updateState,
    TResult? Function(_CheckUp value)? checkUp,
    TResult? Function(_GoOffline value)? goOffline,
    TResult? Function(_GoOnline value)? goOnline,
  }) {
    return goOffline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_UpdateState value)? updateState,
    TResult Function(_CheckUp value)? checkUp,
    TResult Function(_GoOffline value)? goOffline,
    TResult Function(_GoOnline value)? goOnline,
    required TResult orElse(),
  }) {
    if (goOffline != null) {
      return goOffline(this);
    }
    return orElse();
  }
}

abstract class _GoOffline implements ChatsEvent {
  const factory _GoOffline() = _$_GoOffline;
}

/// @nodoc
abstract class _$$_GoOnlineCopyWith<$Res> {
  factory _$$_GoOnlineCopyWith(
          _$_GoOnline value, $Res Function(_$_GoOnline) then) =
      __$$_GoOnlineCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GoOnlineCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res, _$_GoOnline>
    implements _$$_GoOnlineCopyWith<$Res> {
  __$$_GoOnlineCopyWithImpl(
      _$_GoOnline _value, $Res Function(_$_GoOnline) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GoOnline implements _GoOnline {
  const _$_GoOnline();

  @override
  String toString() {
    return 'ChatsEvent.goOnline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GoOnline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) subscribe,
    required TResult Function(List<Chat> chats) updateState,
    required TResult Function() checkUp,
    required TResult Function() goOffline,
    required TResult Function() goOnline,
  }) {
    return goOnline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? subscribe,
    TResult? Function(List<Chat> chats)? updateState,
    TResult? Function()? checkUp,
    TResult? Function()? goOffline,
    TResult? Function()? goOnline,
  }) {
    return goOnline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? subscribe,
    TResult Function(List<Chat> chats)? updateState,
    TResult Function()? checkUp,
    TResult Function()? goOffline,
    TResult Function()? goOnline,
    required TResult orElse(),
  }) {
    if (goOnline != null) {
      return goOnline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_UpdateState value) updateState,
    required TResult Function(_CheckUp value) checkUp,
    required TResult Function(_GoOffline value) goOffline,
    required TResult Function(_GoOnline value) goOnline,
  }) {
    return goOnline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_UpdateState value)? updateState,
    TResult? Function(_CheckUp value)? checkUp,
    TResult? Function(_GoOffline value)? goOffline,
    TResult? Function(_GoOnline value)? goOnline,
  }) {
    return goOnline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_UpdateState value)? updateState,
    TResult Function(_CheckUp value)? checkUp,
    TResult Function(_GoOffline value)? goOffline,
    TResult Function(_GoOnline value)? goOnline,
    required TResult orElse(),
  }) {
    if (goOnline != null) {
      return goOnline(this);
    }
    return orElse();
  }
}

abstract class _GoOnline implements ChatsEvent {
  const factory _GoOnline() = _$_GoOnline;
}

/// @nodoc
mixin _$ChatsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsStateCopyWith<$Res> {
  factory $ChatsStateCopyWith(
          ChatsState value, $Res Function(ChatsState) then) =
      _$ChatsStateCopyWithImpl<$Res, ChatsState>;
}

/// @nodoc
class _$ChatsStateCopyWithImpl<$Res, $Val extends ChatsState>
    implements $ChatsStateCopyWith<$Res> {
  _$ChatsStateCopyWithImpl(this._value, this._then);

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
    extends _$ChatsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ChatsState.initial()';
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
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatsState {
  const factory _Initial() = _$_Initial;
}
