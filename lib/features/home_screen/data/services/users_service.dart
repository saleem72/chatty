// ignore_for_file: public_member_api_docs, sort_constructors_first
//

import 'dart:async';

import 'package:firebase_database/firebase_database.dart';

import 'package:chatty/core/data/firebase_auth_manager/extension/data_snapshot_extension.dart';
import 'package:chatty/core/domain/models/app_user.dart';
import 'package:flutter/material.dart';

import '../../domain/services/i_users_service.dart';

class UsersService implements IUsersService {
  final StreamController<List<AppUser>> _gettingUsers =
      StreamController<List<AppUser>>.broadcast();
  StreamSubscription? _gettingUsersSubscription;

  final StreamController<AppUser> _updatingUsers =
      StreamController<AppUser>.broadcast();
  StreamSubscription? _updatingUsersSubscription;

  final FirebaseDatabase db;
  UsersService({
    required this.db,
  }) : usersTable = db.ref().child('users');
  final DatabaseReference usersTable;

  @override
  Future<void> dispose() async {
    _updatingUsers.close();
    _updatingUsersSubscription?.cancel();
    await _gettingUsersSubscription?.cancel();
    await _gettingUsers.close();
  }

  @override
  Stream<List<AppUser>> subscripForUser(String userId) {
    _subscripeForUsers(userId);
    return _gettingUsers.stream;
  }

  @override
  Stream<AppUser> subscripForUsersUpdates() {
    _subscripeForUpdates();
    return _updatingUsers.stream;
  }

  _subscripeForUpdates() {
    _updatingUsersSubscription = usersTable.onChildChanged.listen((event) {
      try {
        if (event.snapshot.exists && event.snapshot.value != null) {
          final snapshot = event.snapshot;
          final json = snapshot.toJson();
          final user = AppUser.fromMap(json, snapshot.key ?? '');
          _updatingUsers.sink.add(user);
        }
      } catch (e) {
        debugPrint('🔥 _subscripeForUpdates:\n${e.toString()}');
      }
    });
  }

  _subscripeForUsers(String userId) {
    if (_gettingUsersSubscription != null) {
      _gettingUsersSubscription?.cancel();
    }
    _gettingUsersSubscription = usersTable.onValue.listen((event) {
      try {
        if (event.snapshot.exists && event.snapshot.value != null) {
          final map = event.snapshot.value as Map;
          final List<AppUser> users = [];
          for (final key in map.keys) {
            if (key != userId) {
              final value = Map<String, dynamic>.from(map[key]);
              final user = AppUser.fromMap(value, key);
              users.add(user);
            }
          }
          _gettingUsers.sink.add(users);
        }
      } catch (e) {
        debugPrint('🔥 _subscripeForUsers:\n${e.toString()}');
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
