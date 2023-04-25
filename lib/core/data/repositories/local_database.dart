//

import 'dart:async';

import 'package:chatty/core/domain/models/message.dart';

import 'package:chatty/core/domain/models/chat.dart';

import '../../domain/repositories/i_local_database.dart';

class LocalDatabase implements ILocalDatabase {
  final StreamController<Chat> _chatsController =
      StreamController<Chat>.broadcast();
  final StreamController<Message> _messagesController =
      StreamController<Message>.broadcast();
  @override
  Stream<List<Chat>> chats() {
    // TODO: implement chats
    throw UnimplementedError();
  }

  @override
  Stream<Message> messageForChat(String chatId) {
    // TODO: implement messageForChat
    throw UnimplementedError();
  }
}
