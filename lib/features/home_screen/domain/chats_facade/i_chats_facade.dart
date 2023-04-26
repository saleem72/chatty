//

import '../../../../core/domain/models/chat.dart';

abstract class IChatsFacade {
  Stream<List<Chat>> subscribeFor(String userId);
  Future<void> dispose();
  Stream<List<Chat>> chatsStream();
  Future<void> handleOldMessages(String userId);
}
