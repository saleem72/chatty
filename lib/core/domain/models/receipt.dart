// ignore_for_file: public_member_api_docs, sort_constructors_first
//

import 'package:chatty/core/domain/models/message_deliver_status.dart';

class Receipt {
  final String owner;
  final String messageId;
  final MessageDeliverStatus status;
  final DateTime timeStamp;
  Receipt({
    required this.owner,
    required this.messageId,
    required this.status,
    required this.timeStamp,
  });

  Map<String, dynamic> tpMap() {
    return <String, dynamic>{
      'owner': owner,
      'messageId': messageId,
      'status': status.value,
      'timeStamp': timeStamp.millisecondsSinceEpoch,
    };
  }

  factory Receipt.fromMap(Map<String, dynamic> map) {
    return Receipt(
      owner: map['owner'] as String,
      messageId: map['messageId'] as String,
      status: MessageDeliverStatus.fromString(map['status'] as String),
      timeStamp: DateTime.fromMillisecondsSinceEpoch(map['timeStamp'] as int),
    );
  }
}
