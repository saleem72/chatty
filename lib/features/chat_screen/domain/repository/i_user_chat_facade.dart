//

import '../../../../core/domain/models/fb_message.dart';
import '../../../../core/domain/models/ui_message.dart';

abstract class IUserChatFacade {
  Future<void> dispose();
  Stream<List<UIMessage>> messagesStream(String partnerId);
  Future<void> sendMessage(FBMessage message);
}
