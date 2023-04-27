// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FBMessage message) sendMessage,
    required TResult Function(String userId) subscribe,
    required TResult Function(List<UIMessage> chats) updateState,
    required TResult Function() checkUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FBMessage message)? sendMessage,
    TResult? Function(String userId)? subscribe,
    TResult? Function(List<UIMessage> chats)? updateState,
    TResult? Function()? checkUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FBMessage message)? sendMessage,
    TResult Function(String userId)? subscribe,
    TResult Function(List<UIMessage> chats)? updateState,
    TResult Function()? checkUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_UpdateState value) updateState,
    required TResult Function(_CheckUp value) checkUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_UpdateState value)? updateState,
    TResult? Function(_CheckUp value)? checkUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_UpdateState value)? updateState,
    TResult Function(_CheckUp value)? checkUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserChatEventCopyWith<$Res> {
  factory $UserChatEventCopyWith(
          UserChatEvent value, $Res Function(UserChatEvent) then) =
      _$UserChatEventCopyWithImpl<$Res, UserChatEvent>;
}

/// @nodoc
class _$UserChatEventCopyWithImpl<$Res, $Val extends UserChatEvent>
    implements $UserChatEventCopyWith<$Res> {
  _$UserChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SendMessageCopyWith<$Res> {
  factory _$$_SendMessageCopyWith(
          _$_SendMessage value, $Res Function(_$_SendMessage) then) =
      __$$_SendMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({FBMessage message});
}

/// @nodoc
class __$$_SendMessageCopyWithImpl<$Res>
    extends _$UserChatEventCopyWithImpl<$Res, _$_SendMessage>
    implements _$$_SendMessageCopyWith<$Res> {
  __$$_SendMessageCopyWithImpl(
      _$_SendMessage _value, $Res Function(_$_SendMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_SendMessage(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as FBMessage,
    ));
  }
}

/// @nodoc

class _$_SendMessage implements _SendMessage {
  const _$_SendMessage({required this.message});

  @override
  final FBMessage message;

  @override
  String toString() {
    return 'UserChatEvent.sendMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendMessage &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendMessageCopyWith<_$_SendMessage> get copyWith =>
      __$$_SendMessageCopyWithImpl<_$_SendMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FBMessage message) sendMessage,
    required TResult Function(String userId) subscribe,
    required TResult Function(List<UIMessage> chats) updateState,
    required TResult Function() checkUp,
  }) {
    return sendMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FBMessage message)? sendMessage,
    TResult? Function(String userId)? subscribe,
    TResult? Function(List<UIMessage> chats)? updateState,
    TResult? Function()? checkUp,
  }) {
    return sendMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FBMessage message)? sendMessage,
    TResult Function(String userId)? subscribe,
    TResult Function(List<UIMessage> chats)? updateState,
    TResult Function()? checkUp,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_UpdateState value) updateState,
    required TResult Function(_CheckUp value) checkUp,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_UpdateState value)? updateState,
    TResult? Function(_CheckUp value)? checkUp,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_UpdateState value)? updateState,
    TResult Function(_CheckUp value)? checkUp,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements UserChatEvent {
  const factory _SendMessage({required final FBMessage message}) =
      _$_SendMessage;

  FBMessage get message;
  @JsonKey(ignore: true)
  _$$_SendMessageCopyWith<_$_SendMessage> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$UserChatEventCopyWithImpl<$Res, _$_Subscribe>
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
    return 'UserChatEvent.subscribe(userId: $userId)';
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
    required TResult Function(FBMessage message) sendMessage,
    required TResult Function(String userId) subscribe,
    required TResult Function(List<UIMessage> chats) updateState,
    required TResult Function() checkUp,
  }) {
    return subscribe(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FBMessage message)? sendMessage,
    TResult? Function(String userId)? subscribe,
    TResult? Function(List<UIMessage> chats)? updateState,
    TResult? Function()? checkUp,
  }) {
    return subscribe?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FBMessage message)? sendMessage,
    TResult Function(String userId)? subscribe,
    TResult Function(List<UIMessage> chats)? updateState,
    TResult Function()? checkUp,
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
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_UpdateState value) updateState,
    required TResult Function(_CheckUp value) checkUp,
  }) {
    return subscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_UpdateState value)? updateState,
    TResult? Function(_CheckUp value)? checkUp,
  }) {
    return subscribe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_UpdateState value)? updateState,
    TResult Function(_CheckUp value)? checkUp,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(this);
    }
    return orElse();
  }
}

abstract class _Subscribe implements UserChatEvent {
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
  $Res call({List<UIMessage> chats});
}

/// @nodoc
class __$$_UpdateStateCopyWithImpl<$Res>
    extends _$UserChatEventCopyWithImpl<$Res, _$_UpdateState>
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
              as List<UIMessage>,
    ));
  }
}

/// @nodoc

class _$_UpdateState implements _UpdateState {
  const _$_UpdateState({required final List<UIMessage> chats}) : _chats = chats;

  final List<UIMessage> _chats;
  @override
  List<UIMessage> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  @override
  String toString() {
    return 'UserChatEvent.updateState(chats: $chats)';
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
    required TResult Function(FBMessage message) sendMessage,
    required TResult Function(String userId) subscribe,
    required TResult Function(List<UIMessage> chats) updateState,
    required TResult Function() checkUp,
  }) {
    return updateState(chats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FBMessage message)? sendMessage,
    TResult? Function(String userId)? subscribe,
    TResult? Function(List<UIMessage> chats)? updateState,
    TResult? Function()? checkUp,
  }) {
    return updateState?.call(chats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FBMessage message)? sendMessage,
    TResult Function(String userId)? subscribe,
    TResult Function(List<UIMessage> chats)? updateState,
    TResult Function()? checkUp,
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
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_UpdateState value) updateState,
    required TResult Function(_CheckUp value) checkUp,
  }) {
    return updateState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_UpdateState value)? updateState,
    TResult? Function(_CheckUp value)? checkUp,
  }) {
    return updateState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_UpdateState value)? updateState,
    TResult Function(_CheckUp value)? checkUp,
    required TResult orElse(),
  }) {
    if (updateState != null) {
      return updateState(this);
    }
    return orElse();
  }
}

abstract class _UpdateState implements UserChatEvent {
  const factory _UpdateState({required final List<UIMessage> chats}) =
      _$_UpdateState;

  List<UIMessage> get chats;
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
    extends _$UserChatEventCopyWithImpl<$Res, _$_CheckUp>
    implements _$$_CheckUpCopyWith<$Res> {
  __$$_CheckUpCopyWithImpl(_$_CheckUp _value, $Res Function(_$_CheckUp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckUp implements _CheckUp {
  const _$_CheckUp();

  @override
  String toString() {
    return 'UserChatEvent.checkUp()';
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
    required TResult Function(FBMessage message) sendMessage,
    required TResult Function(String userId) subscribe,
    required TResult Function(List<UIMessage> chats) updateState,
    required TResult Function() checkUp,
  }) {
    return checkUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FBMessage message)? sendMessage,
    TResult? Function(String userId)? subscribe,
    TResult? Function(List<UIMessage> chats)? updateState,
    TResult? Function()? checkUp,
  }) {
    return checkUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FBMessage message)? sendMessage,
    TResult Function(String userId)? subscribe,
    TResult Function(List<UIMessage> chats)? updateState,
    TResult Function()? checkUp,
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
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_UpdateState value) updateState,
    required TResult Function(_CheckUp value) checkUp,
  }) {
    return checkUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_UpdateState value)? updateState,
    TResult? Function(_CheckUp value)? checkUp,
  }) {
    return checkUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_UpdateState value)? updateState,
    TResult Function(_CheckUp value)? checkUp,
    required TResult orElse(),
  }) {
    if (checkUp != null) {
      return checkUp(this);
    }
    return orElse();
  }
}

abstract class _CheckUp implements UserChatEvent {
  const factory _CheckUp() = _$_CheckUp;
}

/// @nodoc
mixin _$UserChatState {
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
abstract class $UserChatStateCopyWith<$Res> {
  factory $UserChatStateCopyWith(
          UserChatState value, $Res Function(UserChatState) then) =
      _$UserChatStateCopyWithImpl<$Res, UserChatState>;
}

/// @nodoc
class _$UserChatStateCopyWithImpl<$Res, $Val extends UserChatState>
    implements $UserChatStateCopyWith<$Res> {
  _$UserChatStateCopyWithImpl(this._value, this._then);

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
    extends _$UserChatStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'UserChatState.initial()';
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

abstract class _Initial implements UserChatState {
  const factory _Initial() = _$_Initial;
}
