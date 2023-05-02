// ignore_for_file: public_member_api_docs, sort_constructors_first
//

import 'package:chatty/core/data/local_datasource/app_database.dart';
import 'package:equatable/equatable.dart';

import 'message_deliver_status.dart';

class FBMessage extends Equatable {
  final String id;
  final String sender;
  final String receiver;
  final String content;
  final DateTime timestamp;
  final MessageDeliverStatus status;

  const FBMessage._({
    required this.id,
    required this.sender,
    required this.receiver,
    required this.content,
    required this.timestamp,
    required this.status,
  });

  factory FBMessage({
    required String sender,
    required String receiver,
    required String content,
    required DateTime timestamp,
    required MessageDeliverStatus status,
  }) =>
      FBMessage._(
        id: '',
        sender: sender,
        receiver: receiver,
        content: content,
        timestamp: timestamp,
        status: status,
      );
  factory FBMessage.fromEntity(MessageEntityData entity, String me) {
    return FBMessage._(
      id: entity.id,
      sender: entity.toMe ? entity.partner : me,
      receiver: entity.toMe ? me : entity.partner,
      content: entity.content,
      timestamp: DateTime.fromMillisecondsSinceEpoch(entity.receivedAt),
      status: MessageDeliverStatus.fromString(entity.status),
    );
  }

  @override
  String toString() {
    return 'Message(sender: $sender, receiver: $receiver, content: $content, timestamp: $timestamp, status: $status)';
  }

  @override
  List<Object?> get props => [id, sender, receiver, content, timestamp, status];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sender': sender,
      'receiver': receiver,
      'content': content,
      'timestamp': timestamp.millisecondsSinceEpoch,
      'status': status.value,
    };
  }

  factory FBMessage.fromMap(Map<String, dynamic> map, String id) {
    return FBMessage._(
      id: id,
      sender: map['sender'] as String,
      receiver: map['receiver'] as String,
      content: map['content'] as String,
      timestamp: DateTime.fromMillisecondsSinceEpoch(map['timestamp'] as int),
      status: MessageDeliverStatus.fromString(map['status'] as String),
    );
  }

  FBMessage copyWith({
    String? id,
    String? sender,
    String? receiver,
    String? content,
    DateTime? timestamp,
    MessageDeliverStatus? status,
  }) {
    return FBMessage._(
      id: id ?? this.id,
      sender: sender ?? this.sender,
      receiver: receiver ?? this.receiver,
      content: content ?? this.content,
      timestamp: timestamp ?? this.timestamp,
      status: status ?? this.status,
    );
  }
}
