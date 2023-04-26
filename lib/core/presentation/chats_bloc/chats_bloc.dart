import 'dart:async';

import 'package:chatty/core/data/repositories/local_chats.dart';
import 'package:chatty/core/domain/repositories/i_local_chats.dart';
import 'package:chatty/core/domain/repositories/i_user_service.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../features/home_screen/domain/chats_facade/i_chats_facade.dart';
import '../../domain/models/chat.dart';
import '../../domain/models/message.dart';
import '../../domain/repositories/i_remote_messaging_service.dart';

part 'chats_event.dart';
part 'chats_state.dart';
part 'chats_bloc.freezed.dart';

class ChatsBloc extends Bloc<ChatsEvent, List<Chat>> {
  ChatsBloc({
    required IRemoteMessagingService service,
    required IUserService usersService,
    required ILocalChats localDatabase,
    required IChatsFacade repository,
  })  : _service = service,
        _usersService = usersService,
        _localDatabase = localDatabase,
        _repository = repository,
        super(const []) {
    // on<_SendMessage>(_onSendMessage);
    on<_Subscribe>(_onSubscribe);
    on<_UpdateState>(_onUpdateState);
  }
  final IUserService _usersService;
  final IRemoteMessagingService _service;
  final ILocalChats _localDatabase;

  final IChatsFacade _repository;
  StreamSubscription? _messagesSubscription;

  _onUpdateState(_UpdateState event, Emitter<List<Chat>> emit) {
    print('_onUpdateState, ${event.chats.first.toString()}');
    emit(event.chats);
  }

  _onSubscribe(_Subscribe event, Emitter<List<Chat>> emit) async {
    // _messagesSubscription = _service.subscribeFor(event.userId).listen((event) {
    //   _addChatForMessage(event);
    // });
    await _repository.handleOldMessages(event.userId);
    _repository.subscribeFor(event.userId);
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
