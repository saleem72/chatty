//

import '../models/chat.dart';
import '../models/message.dart';

abstract class ILocalChats {
  Future<List<Message>> messageForChat(String chatId);
  Stream<List<Chat>> chats();
  Future<List<Chat>> fetchChats();
  Future<void> dispose();
  Future<void> addMessage(Message message);
  Future<void> deleteAll();
  Future<void> checkUp();
}
