//

import 'package:chatty/core/domain/models/message.dart';

abstract class IRemoteMessagingService {
  Future<void> sendMessage(Message message);
  Stream<Message> subscribeFor(String userId);
  Future<void> dispose();
  Future<List<Message>> fetchMessages(String userId);
  Future<void> deleteMessage(Message message);
}
