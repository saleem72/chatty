//

import 'package:chatty/core/domain/models/fb_message.dart';
import 'package:equatable/equatable.dart';

import '../../data/local_datasource/app_database.dart';
import 'message_deliver_status.dart';

enum Sender {
  me,
  other;

  String get value => toString().split('.').last;

  factory Sender.fromString(String value) =>
      Sender.values.firstWhere((element) => element.value == value);
}

class UIMessage extends Equatable {
  final String id;
  final bool toMe;
  final String partner;
  final String content;
  final DateTime receivedAt;
  final MessageDeliverStatus status;

  const UIMessage._({
    required this.id,
    required this.toMe,
    required this.partner,
    required this.content,
    required this.receivedAt,
    required this.status,
  });

  factory UIMessage({
    required bool toMe,
    required String receiver,
    required String content,
    required DateTime timestamp,
    required MessageDeliverStatus status,
  }) =>
      UIMessage._(
        id: '',
        toMe: toMe,
        partner: receiver,
        content: content,
        receivedAt: timestamp,
        status: status,
      );

  factory UIMessage.fromEntity(MessageEntityData entity) => UIMessage._(
        id: entity.id,
        toMe: entity.toMe,
        partner: entity.partner,
        content: entity.content,
        receivedAt: DateTime.fromMillisecondsSinceEpoch(entity.receivedAt),
        status: MessageDeliverStatus.fromString(entity.status),
      );
  factory UIMessage.fromFBMessage(FBMessage message) {
    return UIMessage(
      toMe: true,
      receiver: message.receiver,
      content: message.content,
      timestamp: message.timestamp,
      status: MessageDeliverStatus.sent,
    );
  }
  @override
  String toString() {
    return 'Message(To me: ${toMe.toString()}, receiver: $partner, content: $content, timestamp: $receivedAt, status: $status)';
  }

  @override
  List<Object?> get props => [id, toMe, partner, content, receivedAt, status];
}
