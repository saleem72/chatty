//

import 'dart:async';

import 'package:chatty/core/data/firebase_auth_manager/extension/data_snapshot_extension.dart';
import 'package:chatty/core/domain/models/app_user.dart';
import 'package:firebase_database/firebase_database.dart';

import '../../domain/services/i_chats_service.dart';

class ChatsService implements IChatsService {
  StreamController<AppUser> controller = StreamController<AppUser>.broadcast();
  StreamSubscription? _streamSubscription;

  final usersTable = FirebaseDatabase.instance.ref().child('users');

  @override
  Future<void> connect(String userId) {
    // TODO: implement connect
    throw UnimplementedError();
  }

  @override
  Future<void> dispose() async {
    await _streamSubscription?.cancel();
    await controller.close();
  }

  @override
  Stream<AppUser> subscripForUser(String userId) {
    _subscripeForUsers(userId);
    return controller.stream;
  }

  oldApprotch(String userId) {
    if (_streamSubscription != null) {
      _streamSubscription?.cancel();
    }
    _streamSubscription = usersTable.onChildAdded.listen((event) {
      final snapshot = event.snapshot;
      final json = snapshot.toJson();
      json.forEach((key, value) {
        if (key != userId) {
          final user = AppUser.fromMap(value, key);
          controller.sink.add(user);
        }
      });
    });
  }

  _subscripeForUsers(String userId) {
    if (_streamSubscription != null) {
      _streamSubscription?.cancel();
    }
    _streamSubscription = usersTable.onChildAdded.listen((event) {
      final snapshot = event.snapshot;
      final json = snapshot.toJson();
      if ((snapshot.key ?? '') != userId) {
        final user = AppUser.fromMap(json, snapshot.key ?? '');
        controller.sink.add(user);
      }
    });
  }

  @override
  Future<List<AppUser>> fetchOnlineUsers(String userId) async {
    final snapshot = await usersTable.get();
    final json = snapshot.toJson();
    List<AppUser> users = [];
    json.forEach((key, value) {
      if (key != userId) {
        final user = AppUser.fromMap(value, key);
        users.add(user);
      }
    });
    return users;
  }
}
