//

import 'package:chatty/core/domain/models/fb_message.dart';

import '../../../../core/data/local_datasource/app_database.dart';
import '../../../../core/domain/models/ui_message.dart';

abstract class ILocalUserChats {
  Stream<List<MessageEntityData>> messages(String partnerId);
  Future<List<UIMessage>> fetchMessages(String partnerId);
  Future<void> sendMessage(FBMessage message);
  Future<void> dispose();
}
