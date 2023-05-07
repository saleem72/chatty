import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/models/chat.dart';
import '../../../../core/domain/repositories/i_user_service.dart';
import '../../domain/facades/i_chats_facade.dart';

part 'chats_bloc.freezed.dart';
part 'chats_event.dart';
part 'chats_state.dart';

class ChatsBloc extends Bloc<ChatsEvent, List<Chat>> {
  ChatsBloc({
    required IChatsFacade repository,
    required IUserService userService,
  })  : _repository = repository,
        _userService = userService,
        super(const []) {
    // on<_SendMessage>(_onSendMessage);
    on<_Subscribe>(_onSubscribe);
    on<_UpdateState>(_onUpdateState);
    on<_CheckUp>(_onCheckUp);
    on<_GoOffline>(_onGoOffline);
    on<_GoOnline>(_onGoOnline);
  }
  final IUserService _userService;
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
    _messagesSubscription = _repository.chatsStream().listen((localChats) {
      add(ChatsEvent.updateState(chats: localChats));
    });
  }

  _onGoOffline(_GoOffline event, Emitter<List<Chat>> emit) {
    _userService.goOffline();
  }

  // on<_GoOnline>(_onGoOnline);
  _onGoOnline(_GoOnline event, Emitter<List<Chat>> emit) {
    _userService.goOnline();
  }

  @override
  Future<void> close() async {
    _messagesSubscription?.cancel();
    _repository.dispose();
    return super.close();
  }
}
