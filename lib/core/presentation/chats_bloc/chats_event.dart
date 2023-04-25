part of 'chats_bloc.dart';

@freezed
class ChatsEvent with _$ChatsEvent {
  const factory ChatsEvent.sendMessage({
    required Message message,
  }) = _SendMessage;

  const factory ChatsEvent.subscribe({
    required String userId,
  }) = _Subscribe;
}
