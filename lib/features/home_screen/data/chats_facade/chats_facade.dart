//

import 'dart:async';

import 'package:chatty/core/domain/models/chat.dart';

import '../../../../core/domain/repositories/i_local_chats.dart';
import '../../../../core/domain/repositories/i_remote_messaging_service.dart';
import '../../../../core/domain/repositories/i_remote_receipts_service.dart';
import '../../../../core/domain/repositories/i_user_service.dart';
import '../../domain/chats_facade/i_chats_facade.dart';

class ChatsFacade implements IChatsFacade {
  ChatsFacade({
    required IRemoteMessagingService remoteMessagingService,
    required IRemoteReceiptsService remoteReceiptService,
    required IUserService usersService,
    required ILocalChats localDatabase,
  })  : _remoteMessagingService = remoteMessagingService,
        _remoteReceiptService = remoteReceiptService,
        _usersService = usersService,
        _localDatabase = localDatabase;

  final IUserService _usersService;
  final IRemoteReceiptsService _remoteReceiptService;
  final IRemoteMessagingService _remoteMessagingService;
  final ILocalChats _localDatabase;
  StreamSubscription? _messagesSubscription;

  StreamSubscription<List<Chat>>? _chatsSubscription;
  final StreamController<List<Chat>> _controller =
      StreamController<List<Chat>>.broadcast();

  @override
  Stream<List<Chat>> subscribeFor(String userId) {
    _messagesSubscription?.cancel();
    _messagesSubscription =
        _remoteMessagingService.subscribeFor(userId).listen((event) {
      _localDatabase.receiveMessage(event);
      _remoteMessagingService.deleteMessage(event);
      _remoteReceiptService.sendDeliverdRecipt(event);
    });

    _chatsSubscription?.cancel();
    _chatsSubscription = _localDatabase.chats().listen((event) {
      _controller.sink.add(event);
    });

    return _controller.stream;
  }

  @override
  Stream<List<Chat>> chatsStream() {
    return _controller.stream;
  }

  @override
  Future<void> dispose() async {
    _messagesSubscription?.cancel();
    _controller.close();
  }

  @override
  Future<void> checkUp() async {
    _localDatabase.checkUp();
  }
}
