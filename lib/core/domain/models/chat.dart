// ignore_for_file: public_member_api_docs, sort_constructors_first
//

import 'package:equatable/equatable.dart';

import 'package:chatty/core/domain/models/app_user.dart';
import 'package:chatty/core/domain/models/message.dart';

class Chat extends Equatable {
  final String id;
  final String lastMessage;
  final int unRead;
  final AppUser partner;
  final List<Message> messages;

  const Chat({
    required this.id,
    required this.lastMessage,
    required this.unRead,
    required this.partner,
    required this.messages,
  });

  @override
  List<Object?> get props => [id, lastMessage, unRead, partner, messages];

  @override
  String toString() =>
      'Chat(partner: ${partner.name}, lastMessage: $lastMessage)';

  Chat copyWith({
    String? id,
    String? lastMessage,
    int? unRead,
    AppUser? partner,
    List<Message>? messages,
  }) {
    return Chat(
      id: id ?? this.id,
      lastMessage: lastMessage ?? this.lastMessage,
      unRead: unRead ?? this.unRead,
      partner: partner ?? this.partner,
      messages: messages ?? this.messages,
    );
  }
}
