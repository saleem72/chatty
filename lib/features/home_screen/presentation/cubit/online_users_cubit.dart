//

import 'package:chatty/core/domain/models/app_user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnlineUsersCubit extends Cubit<List<AppUser>> {
  OnlineUsersCubit() : super([]);

  addUser(AppUser user) {
    final newUsers = state.map((e) => e).toList();
    newUsers.add(user);
    emit(newUsers);
  }
}
