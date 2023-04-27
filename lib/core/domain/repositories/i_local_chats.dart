//

import '../models/chat.dart';
import '../models/fb_message.dart';

abstract class ILocalChats {
  Future<List<FBMessage>> messageForChat(String chatId);
  Stream<List<Chat>> chats();
  Future<List<Chat>> fetchChats();
  Future<void> dispose();
  Future<void> receiveMessage(FBMessage message);
  // Future<void> sendMessage(FBMessage message);
  Future<void> deleteAll();
  Future<void> checkUp();
}
