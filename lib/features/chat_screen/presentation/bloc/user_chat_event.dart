part of 'user_chat_bloc.dart';

@freezed
class UserChatEvent with _$UserChatEvent {
  const factory UserChatEvent.sendMessage({
    required FBMessage message,
  }) = _SendMessage;

  const factory UserChatEvent.subscribe({
    required String userId,
  }) = _Subscribe;

  const factory UserChatEvent.updateState({
    required List<UIMessage> chats,
  }) = _UpdateState;

  const factory UserChatEvent.checkUp() = _CheckUp;
}
