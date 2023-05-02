//

import 'dart:async';

import 'package:chatty/core/domain/models/app_user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/services/i_users_service.dart';

class OnlineUsersCubit extends Cubit<List<AppUser>> {
  final IUsersService _service;
  StreamSubscription? _subscription;
  OnlineUsersCubit({
    required IUsersService service,
  })  : _service = service,
        super([]);

  // fetchUsers(String userId) async {
  //   print('OnlineUsersCubit, fetchUsers');
  //   final users = await _service.fetchOnlineUsers(userId);
  //   emit(users);
  // }

  fetchUsers(String userId) async {
    _subscription = _service.subscripForUser(userId).listen((event) {
      emit(event);
    });
  }

  addUser(AppUser user) {
    final newUsers = state.map((e) => e).toList();
    newUsers.add(user);
    emit(newUsers);
  }

  goOffline() {
    // _service
  }
}
