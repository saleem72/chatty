// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $MessageEntityTable extends MessageEntity
    with TableInfo<$MessageEntityTable, MessageEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MessageEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _senderMeta = const VerificationMeta('sender');
  @override
  late final GeneratedColumn<String> sender = GeneratedColumn<String>(
      'sender', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _receiverMeta =
      const VerificationMeta('receiver');
  @override
  late final GeneratedColumn<String> receiver = GeneratedColumn<String>(
      'receiver', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _receivedAtMeta =
      const VerificationMeta('receivedAt');
  @override
  late final GeneratedColumn<int> receivedAt = GeneratedColumn<int>(
      'received_at', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, sender, receiver, content, status, receivedAt];
  @override
  String get aliasedName => _alias ?? 'message_entity';
  @override
  String get actualTableName => 'message_entity';
  @override
  VerificationContext validateIntegrity(Insertable<MessageEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('sender')) {
      context.handle(_senderMeta,
          sender.isAcceptableOrUnknown(data['sender']!, _senderMeta));
    } else if (isInserting) {
      context.missing(_senderMeta);
    }
    if (data.containsKey('receiver')) {
      context.handle(_receiverMeta,
          receiver.isAcceptableOrUnknown(data['receiver']!, _receiverMeta));
    } else if (isInserting) {
      context.missing(_receiverMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('received_at')) {
      context.handle(
          _receivedAtMeta,
          receivedAt.isAcceptableOrUnknown(
              data['received_at']!, _receivedAtMeta));
    } else if (isInserting) {
      context.missing(_receivedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  MessageEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MessageEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      sender: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sender'])!,
      receiver: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}receiver'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      receivedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}received_at'])!,
    );
  }

  @override
  $MessageEntityTable createAlias(String alias) {
    return $MessageEntityTable(attachedDatabase, alias);
  }
}

class MessageEntityData extends DataClass
    implements Insertable<MessageEntityData> {
  final String id;
  final String sender;
  final String receiver;
  final String content;
  final String status;
  final int receivedAt;
  const MessageEntityData(
      {required this.id,
      required this.sender,
      required this.receiver,
      required this.content,
      required this.status,
      required this.receivedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['sender'] = Variable<String>(sender);
    map['receiver'] = Variable<String>(receiver);
    map['content'] = Variable<String>(content);
    map['status'] = Variable<String>(status);
    map['received_at'] = Variable<int>(receivedAt);
    return map;
  }

  MessageEntityCompanion toCompanion(bool nullToAbsent) {
    return MessageEntityCompanion(
      id: Value(id),
      sender: Value(sender),
      receiver: Value(receiver),
      content: Value(content),
      status: Value(status),
      receivedAt: Value(receivedAt),
    );
  }

  factory MessageEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MessageEntityData(
      id: serializer.fromJson<String>(json['id']),
      sender: serializer.fromJson<String>(json['sender']),
      receiver: serializer.fromJson<String>(json['receiver']),
      content: serializer.fromJson<String>(json['content']),
      status: serializer.fromJson<String>(json['status']),
      receivedAt: serializer.fromJson<int>(json['receivedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'sender': serializer.toJson<String>(sender),
      'receiver': serializer.toJson<String>(receiver),
      'content': serializer.toJson<String>(content),
      'status': serializer.toJson<String>(status),
      'receivedAt': serializer.toJson<int>(receivedAt),
    };
  }

  MessageEntityData copyWith(
          {String? id,
          String? sender,
          String? receiver,
          String? content,
          String? status,
          int? receivedAt}) =>
      MessageEntityData(
        id: id ?? this.id,
        sender: sender ?? this.sender,
        receiver: receiver ?? this.receiver,
        content: content ?? this.content,
        status: status ?? this.status,
        receivedAt: receivedAt ?? this.receivedAt,
      );
  @override
  String toString() {
    return (StringBuffer('MessageEntityData(')
          ..write('id: $id, ')
          ..write('sender: $sender, ')
          ..write('receiver: $receiver, ')
          ..write('content: $content, ')
          ..write('status: $status, ')
          ..write('receivedAt: $receivedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, sender, receiver, content, status, receivedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MessageEntityData &&
          other.id == this.id &&
          other.sender == this.sender &&
          other.receiver == this.receiver &&
          other.content == this.content &&
          other.status == this.status &&
          other.receivedAt == this.receivedAt);
}

class MessageEntityCompanion extends UpdateCompanion<MessageEntityData> {
  final Value<String> id;
  final Value<String> sender;
  final Value<String> receiver;
  final Value<String> content;
  final Value<String> status;
  final Value<int> receivedAt;
  final Value<int> rowid;
  const MessageEntityCompanion({
    this.id = const Value.absent(),
    this.sender = const Value.absent(),
    this.receiver = const Value.absent(),
    this.content = const Value.absent(),
    this.status = const Value.absent(),
    this.receivedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MessageEntityCompanion.insert({
    required String id,
    required String sender,
    required String receiver,
    required String content,
    required String status,
    required int receivedAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        sender = Value(sender),
        receiver = Value(receiver),
        content = Value(content),
        status = Value(status),
        receivedAt = Value(receivedAt);
  static Insertable<MessageEntityData> custom({
    Expression<String>? id,
    Expression<String>? sender,
    Expression<String>? receiver,
    Expression<String>? content,
    Expression<String>? status,
    Expression<int>? receivedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (sender != null) 'sender': sender,
      if (receiver != null) 'receiver': receiver,
      if (content != null) 'content': content,
      if (status != null) 'status': status,
      if (receivedAt != null) 'received_at': receivedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MessageEntityCompanion copyWith(
      {Value<String>? id,
      Value<String>? sender,
      Value<String>? receiver,
      Value<String>? content,
      Value<String>? status,
      Value<int>? receivedAt,
      Value<int>? rowid}) {
    return MessageEntityCompanion(
      id: id ?? this.id,
      sender: sender ?? this.sender,
      receiver: receiver ?? this.receiver,
      content: content ?? this.content,
      status: status ?? this.status,
      receivedAt: receivedAt ?? this.receivedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (sender.present) {
      map['sender'] = Variable<String>(sender.value);
    }
    if (receiver.present) {
      map['receiver'] = Variable<String>(receiver.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (receivedAt.present) {
      map['received_at'] = Variable<int>(receivedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MessageEntityCompanion(')
          ..write('id: $id, ')
          ..write('sender: $sender, ')
          ..write('receiver: $receiver, ')
          ..write('content: $content, ')
          ..write('status: $status, ')
          ..write('receivedAt: $receivedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ChatEntityTable extends ChatEntity
    with TableInfo<$ChatEntityTable, ChatEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ChatEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastMessageMeta =
      const VerificationMeta('lastMessage');
  @override
  late final GeneratedColumn<String> lastMessage = GeneratedColumn<String>(
      'last_message', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastUpdateMeta =
      const VerificationMeta('lastUpdate');
  @override
  late final GeneratedColumn<int> lastUpdate = GeneratedColumn<int>(
      'last_update', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, lastMessage, lastUpdate];
  @override
  String get aliasedName => _alias ?? 'chat_entity';
  @override
  String get actualTableName => 'chat_entity';
  @override
  VerificationContext validateIntegrity(Insertable<ChatEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_message')) {
      context.handle(
          _lastMessageMeta,
          lastMessage.isAcceptableOrUnknown(
              data['last_message']!, _lastMessageMeta));
    } else if (isInserting) {
      context.missing(_lastMessageMeta);
    }
    if (data.containsKey('last_update')) {
      context.handle(
          _lastUpdateMeta,
          lastUpdate.isAcceptableOrUnknown(
              data['last_update']!, _lastUpdateMeta));
    } else if (isInserting) {
      context.missing(_lastUpdateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ChatEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ChatEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastMessage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_message'])!,
      lastUpdate: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_update'])!,
    );
  }

  @override
  $ChatEntityTable createAlias(String alias) {
    return $ChatEntityTable(attachedDatabase, alias);
  }
}

class ChatEntityData extends DataClass implements Insertable<ChatEntityData> {
  final String id;
  final String lastMessage;
  final int lastUpdate;
  const ChatEntityData(
      {required this.id, required this.lastMessage, required this.lastUpdate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['last_message'] = Variable<String>(lastMessage);
    map['last_update'] = Variable<int>(lastUpdate);
    return map;
  }

  ChatEntityCompanion toCompanion(bool nullToAbsent) {
    return ChatEntityCompanion(
      id: Value(id),
      lastMessage: Value(lastMessage),
      lastUpdate: Value(lastUpdate),
    );
  }

  factory ChatEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ChatEntityData(
      id: serializer.fromJson<String>(json['id']),
      lastMessage: serializer.fromJson<String>(json['lastMessage']),
      lastUpdate: serializer.fromJson<int>(json['lastUpdate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastMessage': serializer.toJson<String>(lastMessage),
      'lastUpdate': serializer.toJson<int>(lastUpdate),
    };
  }

  ChatEntityData copyWith({String? id, String? lastMessage, int? lastUpdate}) =>
      ChatEntityData(
        id: id ?? this.id,
        lastMessage: lastMessage ?? this.lastMessage,
        lastUpdate: lastUpdate ?? this.lastUpdate,
      );
  @override
  String toString() {
    return (StringBuffer('ChatEntityData(')
          ..write('id: $id, ')
          ..write('lastMessage: $lastMessage, ')
          ..write('lastUpdate: $lastUpdate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lastMessage, lastUpdate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ChatEntityData &&
          other.id == this.id &&
          other.lastMessage == this.lastMessage &&
          other.lastUpdate == this.lastUpdate);
}

class ChatEntityCompanion extends UpdateCompanion<ChatEntityData> {
  final Value<String> id;
  final Value<String> lastMessage;
  final Value<int> lastUpdate;
  final Value<int> rowid;
  const ChatEntityCompanion({
    this.id = const Value.absent(),
    this.lastMessage = const Value.absent(),
    this.lastUpdate = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ChatEntityCompanion.insert({
    required String id,
    required String lastMessage,
    required int lastUpdate,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        lastMessage = Value(lastMessage),
        lastUpdate = Value(lastUpdate);
  static Insertable<ChatEntityData> custom({
    Expression<String>? id,
    Expression<String>? lastMessage,
    Expression<int>? lastUpdate,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastMessage != null) 'last_message': lastMessage,
      if (lastUpdate != null) 'last_update': lastUpdate,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ChatEntityCompanion copyWith(
      {Value<String>? id,
      Value<String>? lastMessage,
      Value<int>? lastUpdate,
      Value<int>? rowid}) {
    return ChatEntityCompanion(
      id: id ?? this.id,
      lastMessage: lastMessage ?? this.lastMessage,
      lastUpdate: lastUpdate ?? this.lastUpdate,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastMessage.present) {
      map['last_message'] = Variable<String>(lastMessage.value);
    }
    if (lastUpdate.present) {
      map['last_update'] = Variable<int>(lastUpdate.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChatEntityCompanion(')
          ..write('id: $id, ')
          ..write('lastMessage: $lastMessage, ')
          ..write('lastUpdate: $lastUpdate, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $MessageEntityTable messageEntity = $MessageEntityTable(this);
  late final $ChatEntityTable chatEntity = $ChatEntityTable(this);
  late final ChatsDAO chatsDAO = ChatsDAO(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [messageEntity, chatEntity];
}
