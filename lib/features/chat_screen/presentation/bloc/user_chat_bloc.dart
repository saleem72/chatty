//

import 'dart:async';

import 'package:chatty/core/domain/models/fb_message.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/models/ui_message.dart';
import '../../domain/repository/i_user_chat_facade.dart';

part 'user_chat_event.dart';
part 'user_chat_state.dart';
part 'user_chat_bloc.freezed.dart';

class UserChatBloc extends Bloc<UserChatEvent, List<UIMessage>> {
  final IUserChatFacade _repository;

  StreamSubscription? _messagesSubscription;

  UserChatBloc({
    required IUserChatFacade repository,
  })  : _repository = repository,
        super(const []) {
    on<_SendMessage>(_onSendMessage);
    on<_Subscribe>(_onSubscribe);
    on<_UpdateState>(_onUpdateState);
  }

  _onUpdateState(_UpdateState event, Emitter<List<UIMessage>> emit) {
    emit(event.chats);
  }

  _onSubscribe(_Subscribe event, Emitter<List<UIMessage>> emit) {
    _messagesSubscription?.cancel();
    _messagesSubscription =
        _repository.messagesStream(event.userId).listen((event) {
      add(UserChatEvent.updateState(chats: event));
    });
  }

  _onSendMessage(_SendMessage event, Emitter<List<UIMessage>> emit) async {
    final newList = state.map((e) => e).toList()
      ..add(UIMessage.fromFBMessage(event.message));
    emit(newList);
    _repository.sendMessage(event.message);
  }

  @override
  Future<void> close() {
    _messagesSubscription?.cancel();
    _repository.dispose();
    return super.close();
  }
}
