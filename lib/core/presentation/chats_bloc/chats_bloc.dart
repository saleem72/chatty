import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/models/message.dart';
import '../../domain/repositories/i_remote_messaging_service.dart';

part 'chats_event.dart';
part 'chats_state.dart';
part 'chats_bloc.freezed.dart';

class ChatsBloc extends Bloc<ChatsEvent, ChatsState> {
  ChatsBloc({
    required IRemoteMessagingService service,
  })  : _service = service,
        super(const ChatsState.initial()) {
    on<_SendMessage>(_onSendMessage);
    on<_Subscribe>(_onSubscribe);
  }

  final IRemoteMessagingService _service;
  StreamSubscription? _messagesSubscription;

  _onSubscribe(_Subscribe event, Emitter<ChatsState> emit) {
    _messagesSubscription = _service.subscribeFor(event.userId).listen((event) {
      // TODO
    });
  }

  _onSendMessage(_SendMessage event, Emitter<ChatsState> emit) {
    _service.sendMessage(event.message);
  }

  @override
  Future<void> close() {
    _messagesSubscription?.cancel();
    _service.dispose();
    return super.close();
  }
}
