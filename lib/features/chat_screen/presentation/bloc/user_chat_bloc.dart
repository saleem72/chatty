//

import 'package:chatty/core/domain/models/message.dart';
import 'package:chatty/core/domain/repositories/i_remote_messaging_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_chat_event.dart';
part 'user_chat_state.dart';
part 'user_chat_bloc.freezed.dart';

class UserChatBloc extends Bloc<UserChatEvent, UserChatState> {
  final IRemoteMessagingService _remoteMessagingService;
  UserChatBloc({
    required IRemoteMessagingService remoteMessagingService,
  })  : _remoteMessagingService = remoteMessagingService,
        super(const _Initial()) {
    on<_SendMessage>(_onSendMessage);
  }

  _onSendMessage(_SendMessage event, Emitter<UserChatState> emit) {
    _remoteMessagingService.sendMessage(event.message);
  }
}
