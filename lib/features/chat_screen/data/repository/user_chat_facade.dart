//

import 'dart:async';

import 'package:chatty/core/domain/models/ui_message.dart';

import 'package:chatty/core/domain/models/fb_message.dart';

import '../../../../core/domain/repositories/i_remote_messaging_service.dart';
import '../../domain/repository/i_local_user_chats.dart';
import '../../domain/repository/i_user_chat_facade.dart';

class UserChatFacade implements IUserChatFacade {
  final IRemoteMessagingService _remoteMessagingService;
  final ILocalUserChats _localChats;

  final StreamController<List<UIMessage>> _messagesController =
      StreamController<List<UIMessage>>.broadcast();

  StreamSubscription? _subscription;

  UserChatFacade({
    required IRemoteMessagingService remoteMessagingService,
    required ILocalUserChats localChats,
  })  : _remoteMessagingService = remoteMessagingService,
        _localChats = localChats;

  @override
  Future<void> dispose() async {
    _subscription?.cancel();
    _messagesController.close();
  }

  @override
  Stream<List<UIMessage>> messagesStream(String partnerId) {
    _subscription?.cancel();
    _subscription = _localChats.messages(partnerId).listen((event) {
      final result = event.map((e) => UIMessage.fromEntity(e)).toList();
      _messagesController.sink.add(result);
    });
    return _messagesController.stream;
  }

  @override
  Future<void> sendMessage(FBMessage message) async {
    final messageId = await _remoteMessagingService.sendMessage(message);

    final messageWithId = message.copyWith(id: messageId);
    _localChats.sendMessage(messageWithId);
  }
}
