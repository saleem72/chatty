//

import 'dart:async';

import 'package:chatty/core/domain/models/chat.dart';

import '../../../../core/domain/repositories/i_local_chats.dart';
import '../../../../core/domain/repositories/i_remote_messaging_service.dart';
import '../../../../core/domain/repositories/i_user_service.dart';
import '../../domain/chats_facade/i_chats_facade.dart';

class ChatsFacade implements IChatsFacade {
  ChatsFacade({
    required IRemoteMessagingService service,
    required IUserService usersService,
    required ILocalChats localDatabase,
  })  : _service = service,
        _usersService = usersService,
        _localDatabase = localDatabase;

  final IUserService _usersService;
  final IRemoteMessagingService _service;
  final ILocalChats _localDatabase;
  StreamSubscription? _messagesSubscription;

  StreamSubscription<List<Chat>>? _chatsSubscription;
  final StreamController<List<Chat>> _controller =
      StreamController<List<Chat>>.broadcast();

  @override
  Future<void> handleOldMessages(String userId) async {
    // _localDatabase.deleteAll();
    // final messages = await _service.fetchMessages(userId);
    // for (final message in messages) {
    //   await _localDatabase.addMessage(message);
    // }
  }

  @override
  Stream<List<Chat>> subscribeFor(String userId) {
    _messagesSubscription?.cancel();
    _messagesSubscription = _service.subscribeFor(userId).listen((event) {
      _localDatabase.addMessage(event);
      _service.deleteMessage(event);
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
