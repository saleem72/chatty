// ignore_for_file: public_member_api_docs, sort_constructors_first
//

import 'dart:async';

import 'package:chatty/core/data/firebase_auth_manager/extension/data_snapshot_extension.dart';
import 'package:firebase_database/firebase_database.dart';

import 'package:chatty/core/domain/models/message.dart';
import 'package:chatty/core/domain/repositories/i_remote_messaging_service.dart';

class RemoteMessagingService implements IRemoteMessagingService {
  final FirebaseDatabase _db;
  final DatabaseReference _messagesTable;
  RemoteMessagingService({
    required FirebaseDatabase db,
  })  : _db = db,
        _messagesTable = db.ref('messages');

  final StreamController<Message> _controller =
      StreamController<Message>.broadcast();
  StreamSubscription? _subscription;

  @override
  Future<void> sendMessage(Message message) async {
    final newMessage = _messagesTable.push();
    await newMessage.set(message.toMap());
  }

  @override
  Future<void> dispose() async {
    _subscription?.cancel();
    _controller.close();
  }

  // receiver
  @override
  Stream<Message> subscribeFor(String userId) {
    _createStreamForSubscriber(userId);
    return _controller.stream;
  }

  Future<List<Message>> fetchMessages(String userId) async {
    final snapshot =
        await _messagesTable.orderByChild('receiver').equalTo(userId).get();

    final json = snapshot.toJson();
    List<Message> messages = [];
    json.forEach((key, value) {
      final user = Message.fromMap(value, key);
      messages.add(user);
    });

    return messages;
  }

  _createStreamForSubscriber(String userId) async {
    if (_subscription != null) {
      _subscription?.cancel();
    }

    _subscription = _messagesTable
        .orderByChild('receiver')
        .equalTo(userId)
        .onChildAdded
        .listen((event) {
      final json = event.snapshot.toJson();
      final message = Message.fromMap(json, event.snapshot.key ?? '');
      _controller.sink.add(message);
    });
  }
}
