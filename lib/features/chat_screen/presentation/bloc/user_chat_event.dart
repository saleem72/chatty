part of 'user_chat_bloc.dart';

@freezed
class UserChatEvent with _$UserChatEvent {
  const factory UserChatEvent.sendMessage({
    required Message message,
  }) = _SendMessage;
}
