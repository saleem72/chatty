//

import 'dart:async';

import 'package:chatty/features/home_screen/domain/services/i_chats_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/models/app_user.dart';
import '../../../../core/domain/repositories/i_auth_service.dart';
import '../failure/home_failure.dart';

part 'users_event.dart';
part 'users_state.dart';
part 'users_bloc.freezed.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final IAuthService authManager;
  final IChatsService chatsService;
  UsersBloc({
    required this.authManager,
    required this.chatsService,
  }) : super(const _Initial()) {
    on<_Logout>(_onLogout);
    on<_SubscripToChats>(_onSubscripToChats);
    on<_NewChats>(_onNewChats);
  }

  StreamSubscription<AppUser>? streamSubscription;

  _onNewChats(_NewChats event, Emitter<UsersState> emit) {
    emit(UsersState.newUser(user: event.user));
  }

  _onSubscripToChats(_SubscripToChats event, Emitter<UsersState> emit) async {
    // final users = await chatsService.fetchOnlineUsers(event.userId);
    // emit(UsersState.onlineUsers(users: users));
    if (streamSubscription != null) {
      return;
    }
    chatsService.subscripForUser(event.userId);
    if (streamSubscription != null) {
      streamSubscription?.cancel();
    }
    streamSubscription =
        chatsService.subscripForUser(event.userId).listen((event) {
      add(UsersEvent.newChats(user: event));
    });
  }

  _onLogout(_Logout event, Emitter<UsersState> emit) async {
    authManager.logout();
    // final either = await authManager.logout();
    // either.fold(
    //   (l) =>
    //       emit(const UsersState.failure(failure: HomeFailure.unableToLogout())),
    //   (r) => emit(const UsersState.loggedOut()),
    // );
  }

  @override
  Future<void> close() {
    streamSubscription?.cancel();
    chatsService.dispose();
    return super.close();
  }
}
