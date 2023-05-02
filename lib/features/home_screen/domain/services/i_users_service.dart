//

import 'dart:async';

import '../../../../core/domain/models/app_user.dart';

abstract class IUsersService {
  Future<List<AppUser>> fetchOnlineUsers(String userId);
  Stream<List<AppUser>> subscripForUser(String userId);
  Stream<AppUser> subscripForUsersUpdates();
  Future<void> dispose();
}
