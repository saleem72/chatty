//

import 'dart:async';

import 'package:chatty/core/domain/models/chat.dart';

import '../../../../core/domain/repositories/i_local_chats.dart';
import '../../../../core/domain/repositories/i_remote_messaging_service.dart';
import '../../../../core/domain/repositories/i_remote_receipts_service.dart';
import '../../domain/facades/i_chats_facade.dart';

class ChatsFacade implements IChatsFacade {
  ChatsFacade({
    required IRemoteMessagingService remoteMessagingService,
    required IRemoteReceiptsService remoteReceiptService,
    required ILocalChats localDatabase,
  })  : _remoteMessagingService = remoteMessagingService,
        _remoteReceiptService = remoteReceiptService,
        _localDatabase = localDatabase;

  final IRemoteReceiptsService _remoteReceiptService;
  final IRemoteMessagingService _remoteMessagingService;
  final ILocalChats _localDatabase;

  StreamSubscription? _messagesSubscription;
  StreamSubscription? _receiptsSubscription;

  StreamSubscription<List<Chat>>? _chatsSubscription;
  final StreamController<List<Chat>> _controller =
      StreamController<List<Chat>>.broadcast();

  @override
  Stream<List<Chat>> subscribeFor(String userId) {
    _subscripeForMessaging(userId);
    _subscripeForUserReceipts(userId);
    _subscripeForLocalChats(userId);

    return _controller.stream;
  }

  _subscripeForMessaging(String userId) {
    _messagesSubscription?.cancel();
    _messagesSubscription =
        _remoteMessagingService.subscribeFor(userId).listen((event) {
      _localDatabase.receiveMessage(event);
      _remoteMessagingService.deleteMessage(event);
      _remoteReceiptService.sendDeliverdRecipt(event);
    });
  }

  _subscripeForUserReceipts(String userId) {
    _receiptsSubscription?.cancel();
    _receiptsSubscription =
        _remoteReceiptService.subscripe(userId).listen((event) {
      // print('_subscripeForUserReceipts: ${event.messageId}');
      _localDatabase.updateMessageStatus(event);
      _remoteReceiptService.deleteReceipt(event);
    });
  }

  _subscripeForLocalChats(String userId) {
    _chatsSubscription?.cancel();
    _chatsSubscription = _localDatabase.chats().listen((event) {
      _controller.sink.add(event);
    });
  }

  @override
  Stream<List<Chat>> chatsStream() {
    return _controller.stream;
  }

  @override
  Future<void> dispose() async {
    _messagesSubscription?.cancel();
    _receiptsSubscription?.cancel();
    _chatsSubscription?.cancel();
    _controller.close();
  }

  @override
  Future<void> checkUp() async {
    _localDatabase.checkUp();
  }
}
