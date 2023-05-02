//

import 'dart:async';

import 'package:chatty/core/data/firebase_auth_manager/extension/data_snapshot_extension.dart';
import 'package:chatty/core/domain/models/receipt.dart';

import 'package:chatty/core/domain/models/fb_message.dart';
import 'package:firebase_database/firebase_database.dart';

import '../../domain/models/message_deliver_status.dart';
import '../../domain/repositories/i_remote_receipts_service.dart';

class RemoteReceiptsService implements IRemoteReceiptsService {
  final DatabaseReference _receiptsTable;
  RemoteReceiptsService({
    required FirebaseDatabase db,
  }) : _receiptsTable = db.ref('receipts');

  final StreamController<Receipt> _controller =
      StreamController<Receipt>.broadcast();
  StreamSubscription? _subscription;

  @override
  Future<void> sendReceivedReciept(List<Receipt> receipts) async {
    for (final receipt in receipts) {
      final remoteReceipt = _receiptsTable.child(receipt.messageId);
      remoteReceipt.update(receipt.tpMap());
    }
  }

  @override
  Future<void> sendDeliverdRecipt(FBMessage message) async {
    final Receipt receipt = Receipt(
      owner: message.sender,
      messageId: message.id,
      status: MessageDeliverStatus.delivered,
      timeStamp: DateTime.now(),
    );
    final remoteReceipt = _receiptsTable.child(message.id);
    await remoteReceipt.set(receipt.tpMap());
  }

  @override
  Future<void> dispose() async {
    _subscription?.cancel();
    _controller.close();
  }

  @override
  Stream<Receipt> subscripe(String userId) {
    _createStreamForSubscriber(userId);
    return _controller.stream;
  }

  _createStreamForSubscriber(String userId) async {
    if (_subscription != null) {
      _subscription?.cancel();
    }

    _subscription = _receiptsTable
        .orderByChild('owner')
        .equalTo(userId)
        .onChildAdded
        .listen((event) {
      final json = event.snapshot.toJson();
      final receivedMessage = Receipt.fromMap(json);
      _controller.sink.add(receivedMessage);
    });
  }

  @override
  Future<void> deleteReceipt(Receipt receipt) async {
    final receiptToDelete = _receiptsTable.child(receipt.messageId);
    receiptToDelete.remove();
  }
}
