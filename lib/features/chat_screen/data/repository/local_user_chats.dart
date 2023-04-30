//

import 'dart:async';

import 'package:chatty/core/domain/models/fb_message.dart';
import 'package:chatty/core/domain/models/ui_message.dart';

import '../../../../core/data/local_datasource/app_database.dart';
import '../../../../core/data/local_datasource/daos/chats_dao.dart';
import '../../domain/repository/i_local_user_chats.dart';

class LocalUserChats implements ILocalUserChats {
  final StreamController<List<MessageEntityData>> _chatsController =
      StreamController<List<MessageEntityData>>.broadcast();

  StreamSubscription? _subscription;

  LocalUserChats({
    required AppDatabase db,
  }) : _dao = db.chatsDAO;

  final ChatsDAO _dao;
  @override
  Future<void> dispose() async {
    _subscription?.cancel();
    _chatsController.close();
  }

  @override
  Future<List<UIMessage>> fetchMessages(String partnerId) async {
    final localChats = await _dao.messageForChat(partnerId: partnerId);
    final result = localChats.map((e) => UIMessage.fromEntity(e)).toList();

    return result;
  }

  @override
  Stream<List<MessageEntityData>> messages(String partnerId) {
    _subscription = _dao.messages().listen((event) {
      final messages =
          event.where((element) => element.partner == partnerId).toList();
      _chatsController.sink.add(messages);
    });
    return _chatsController.stream;
  }

  @override
  Future<void> sendMessage(FBMessage message) async {
    final messageEntity = MessageEntityData(
      id: message.id,
      toMe: false,
      partner: message.receiver,
      content: message.content,
      status: message.status.value,
      receivedAt: message.timestamp.millisecondsSinceEpoch,
    );

    _dao.addMesssageToLocalDB(messageEntity);
  }
}
