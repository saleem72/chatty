import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/models/chat.dart';
import '../../../home_screen/domain/chats_facade/i_chats_facade.dart';

part 'chats_bloc.freezed.dart';
part 'chats_event.dart';
part 'chats_state.dart';

class ChatsBloc extends Bloc<ChatsEvent, List<Chat>> {
  ChatsBloc({
    required IChatsFacade repository,
  })  : _repository = repository,
        super(const []) {
    // on<_SendMessage>(_onSendMessage);
    on<_Subscribe>(_onSubscribe);
    on<_UpdateState>(_onUpdateState);
    on<_CheckUp>(_onCheckUp);
  }

  final IChatsFacade _repository;
  StreamSubscription? _messagesSubscription;

  _onCheckUp(_CheckUp event, Emitter<List<Chat>> emit) {
    _repository.checkUp();
  }

  _onUpdateState(_UpdateState event, Emitter<List<Chat>> emit) {
    final chats = event.chats;
    emit(chats);
  }

  _onSubscribe(_Subscribe event, Emitter<List<Chat>> emit) async {
    /// tracking changes in firebase messages
    _repository.subscribeFor(event.userId);

    /// tracking firebase receipts
    //TODO: create helper to receive firebase receipts
    _messagesSubscription = _repository.chatsStream().listen((localChats) {
      add(ChatsEvent.updateState(chats: localChats));
    });
  }

  @override
  Future<void> close() {
    _messagesSubscription?.cancel();
    _repository.dispose();
    return super.close();
  }
}
