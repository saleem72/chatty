//

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
      status: MessageDeliverStatus.delivered.value,
      timeStamp: DateTime.now().millisecondsSinceEpoch,
    );
    final remoteReceipt = _receiptsTable.child(message.id);
    await remoteReceipt.set(receipt.tpMap());
  }
}
