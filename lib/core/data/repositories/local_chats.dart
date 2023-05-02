//

import 'dart:async';

import 'package:chatty/core/domain/models/fb_message.dart';

import 'package:chatty/core/domain/models/chat.dart';
import 'package:chatty/core/domain/models/receipt.dart';
import 'package:chatty/core/domain/repositories/i_user_service.dart';

import '../../domain/models/message_deliver_status.dart';
import '../../domain/repositories/i_local_chats.dart';
import '../local_datasource/app_database.dart';
import '../local_datasource/daos/chats_dao.dart';

class LocalChats implements ILocalChats {
  final StreamController<List<Chat>> _chatsController =
      StreamController<List<Chat>>.broadcast();

  StreamSubscription? _subscription;

  LocalChats({
    required AppDatabase db,
    required IUserService userService,
  })  : _dao = db.chatsDAO,
        _userService = userService;

  final ChatsDAO _dao;
  final IUserService _userService;

  @override
  Stream<List<Chat>> chats() {
    _subscription?.cancel();
    _subscription = _dao.chats().listen((localChats) async {
      final List<Chat> result = [];
      for (final entity in localChats) {
        final chat = await entityToLocalChat(entity);
        result.add(chat);
      }
      _chatsController.sink.add(result);
    });
    return _chatsController.stream;
  }

  Future<Chat> entityToLocalChat(ChatEntityData entity) async {
    final localMessages = await _dao.messageForChat(partnerId: entity.id);
    final unRead = (localMessages.where(
      (element) =>
          element.toMe == true &&
          element.status == MessageDeliverStatus.delivered.value,
    )).length;
    final partner = await _userService.userForId(entity.id);
    return Chat(
      id: entity.id,
      lastMessage: entity.lastMessage,
      unRead: unRead,
      partner: partner,
      messages: const [],
    );
  }

  @override
  Future<void> dispose() async {
    _subscription?.cancel();
    _chatsController.close();
  }

  @override
  Future<void> receiveMessage(FBMessage message) async {
    final messageEntity = MessageEntityData(
      id: message.id,
      toMe: true,
      partner: message.sender,
      content: message.content,
      status: message.status.value,
      receivedAt: message.timestamp.millisecondsSinceEpoch,
    );

    _dao.addMesssageToLocalDB(messageEntity);
  }

  @override
  Future<List<Chat>> fetchChats() async {
    final localChats = await _dao.fetchChats();
    final List<Chat> result = [];
    for (ChatEntityData entity in localChats) {
      final chat = await entityToLocalChat(entity);
      result.add(chat);
    }

    return result;
  }

  @override
  Future<void> deleteAll() async {
    await _dao.deleteAll();
  }

  @override
  Future<void> checkUp() async {
    // await _dao.;
    final before = await _dao.fetchAllMessages();
    print(before.length);
    // await _dao.deleteAll();
    // final after = await _dao.fetchAllMessages();
    // print(after.length);
  }

  @override
  Future<void> updateMessageStatus(Receipt reciept) async {
    _dao.updateMessageStatus(reciept);
  }
}
