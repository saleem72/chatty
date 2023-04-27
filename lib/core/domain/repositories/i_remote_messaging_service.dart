//

import 'package:chatty/core/domain/models/fb_message.dart';

abstract class IRemoteMessagingService {
  Future<String> sendMessage(FBMessage message);
  Stream<FBMessage> subscribeFor(String userId);
  Future<void> dispose();
  Future<List<FBMessage>> fetchMessages(String userId);
  Future<void> deleteMessage(FBMessage message);
}
