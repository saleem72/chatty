//

import 'dart:async';

import '../../../../core/domain/models/app_user.dart';

abstract class IChatsService {
  Future<List<AppUser>> fetchOnlineUsers(String userId);
  Future<void> connect(String userId);
  Stream<AppUser> subscripForUser(String userId);
  Future<void> dispose();
}
