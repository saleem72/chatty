//

import 'dart:async';

import 'package:chatty/core/domain/models/fb_message.dart';
import 'package:chatty/core/domain/models/receipt.dart';
import 'package:chatty/core/domain/models/ui_message.dart';
import 'package:chatty/core/domain/repositories/i_remote_messaging_service.dart';

import '../../../../core/data/local_datasource/app_database.dart';
import '../../../../core/data/local_datasource/daos/chats_dao.dart';
import '../../../../core/domain/models/message_deliver_status.dart';
import '../../../../core/domain/repositories/i_remote_receipts_service.dart';
import '../../domain/repository/i_local_user_chats.dart';

class LocalUserChats implements ILocalUserChats {
  final StreamController<List<MessageEntityData>> _chatsController =
      StreamController<List<MessageEntityData>>.broadcast();

  StreamSubscription? _subscription;

  LocalUserChats({
    required AppDatabase db,
    required IRemoteReceiptsService remoteReceiptService,
    required IRemoteMessagingService remoteMessagingService,
  })  : _dao = db.chatsDAO,
        _remoteReceiptService = remoteReceiptService;
  // _remoteMessagingService = remoteMessagingService;

  final ChatsDAO _dao;
  // final IRemoteMessagingService _remoteMessagingService;
  final IRemoteReceiptsService _remoteReceiptService;
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
      final unreadMessages = messages
          .where((element) =>
              element.toMe == true &&
              element.status == MessageDeliverStatus.delivered.value)
          .toList();
      if (unreadMessages.isNotEmpty) {
        // send reciepts for each message;
        // update status to recieved
        _dao.messagesHasReceived(partnerId);
        final ids = unreadMessages
            .map(
              (e) => Receipt(
                owner: partnerId,
                messageId: e.id,
                status: MessageDeliverStatus.received,
                timeStamp: DateTime.now(),
              ),
            )
            .toList();
        _remoteReceiptService.sendReceivedReciept(ids);
        _dao.readMessages(partnerId);
      } else {
        _chatsController.sink.add(messages);
      }
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
