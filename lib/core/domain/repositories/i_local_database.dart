//

import '../models/chat.dart';
import '../models/message.dart';

abstract class ILocalDatabase {
  Stream<Message> messageForChat(String chatId);
  Stream<List<Chat>> chats();
}
