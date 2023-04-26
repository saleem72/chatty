// ignore_for_file: public_member_api_docs, sort_constructors_first
//

import 'package:equatable/equatable.dart';

enum MessageDeliverStatus {
  sent,
  delivered;

  String get value => toString().split('.').last;

  factory MessageDeliverStatus.fromString(String value) =>
      MessageDeliverStatus.values
          .firstWhere((element) => element.value == value);
}

class Message extends Equatable {
  final String id;
  final String sender;
  final String receiver;
  final String content;
  final DateTime timestamp;
  final MessageDeliverStatus status;

  const Message._({
    required this.id,
    required this.sender,
    required this.receiver,
    required this.content,
    required this.timestamp,
    required this.status,
  });

  factory Message({
    required String sender,
    required String receiver,
    required String content,
    required DateTime timestamp,
    required MessageDeliverStatus status,
  }) =>
      Message._(
        id: '',
        sender: sender,
        receiver: receiver,
        content: content,
        timestamp: timestamp,
        status: status,
      );

  @override
  String toString() {
    return 'Message(sender: $sender, receiver: $receiver, content: $content, timestamp: $timestamp, status: $status)';
  }

  @override
  List<Object?> get props => [sender, receiver, content, timestamp, status];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sender': sender,
      'receiver': receiver,
      'content': content,
      'timestamp': timestamp.millisecondsSinceEpoch,
      'status': status.value,
    };
  }

  factory Message.fromMap(Map<String, dynamic> map, String id) {
    return Message._(
      id: id,
      sender: map['sender'] as String,
      receiver: map['receiver'] as String,
      content: map['content'] as String,
      timestamp: DateTime.fromMillisecondsSinceEpoch(map['timestamp'] as int),
      status: MessageDeliverStatus.fromString(map['status'] as String),
    );
  }
}
