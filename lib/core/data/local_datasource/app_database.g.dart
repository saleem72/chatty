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
  static const VerificationMeta _toMeMeta = const VerificationMeta('toMe');
  @override
  late final GeneratedColumn<bool> toMe =
      GeneratedColumn<bool>('to_me', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("to_me" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }));
  static const VerificationMeta _partnerMeta =
      const VerificationMeta('partner');
  @override
  late final GeneratedColumn<String> partner = GeneratedColumn<String>(
      'partner', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _receivedAtMeta =
      const VerificationMeta('receivedAt');
  @override
  late final GeneratedColumn<int> receivedAt = GeneratedColumn<int>(
      'received_at', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, toMe, partner, content, receivedAt, status];
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
    if (data.containsKey('to_me')) {
      context.handle(
          _toMeMeta, toMe.isAcceptableOrUnknown(data['to_me']!, _toMeMeta));
    } else if (isInserting) {
      context.missing(_toMeMeta);
    }
    if (data.containsKey('partner')) {
      context.handle(_partnerMeta,
          partner.isAcceptableOrUnknown(data['partner']!, _partnerMeta));
    } else if (isInserting) {
      context.missing(_partnerMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('received_at')) {
      context.handle(
          _receivedAtMeta,
          receivedAt.isAcceptableOrUnknown(
              data['received_at']!, _receivedAtMeta));
    } else if (isInserting) {
      context.missing(_receivedAtMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MessageEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MessageEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      toMe: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}to_me'])!,
      partner: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}partner'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
      receivedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}received_at'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
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
  final bool toMe;
  final String partner;
  final String content;
  final int receivedAt;
  final String status;
  const MessageEntityData(
      {required this.id,
      required this.toMe,
      required this.partner,
      required this.content,
      required this.receivedAt,
      required this.status});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['to_me'] = Variable<bool>(toMe);
    map['partner'] = Variable<String>(partner);
    map['content'] = Variable<String>(content);
    map['received_at'] = Variable<int>(receivedAt);
    map['status'] = Variable<String>(status);
    return map;
  }

  MessageEntityCompanion toCompanion(bool nullToAbsent) {
    return MessageEntityCompanion(
      id: Value(id),
      toMe: Value(toMe),
      partner: Value(partner),
      content: Value(content),
      receivedAt: Value(receivedAt),
      status: Value(status),
    );
  }

  factory MessageEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MessageEntityData(
      id: serializer.fromJson<String>(json['id']),
      toMe: serializer.fromJson<bool>(json['toMe']),
      partner: serializer.fromJson<String>(json['partner']),
      content: serializer.fromJson<String>(json['content']),
      receivedAt: serializer.fromJson<int>(json['receivedAt']),
      status: serializer.fromJson<String>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'toMe': serializer.toJson<bool>(toMe),
      'partner': serializer.toJson<String>(partner),
      'content': serializer.toJson<String>(content),
      'receivedAt': serializer.toJson<int>(receivedAt),
      'status': serializer.toJson<String>(status),
    };
  }

  MessageEntityData copyWith(
          {String? id,
          bool? toMe,
          String? partner,
          String? content,
          int? receivedAt,
          String? status}) =>
      MessageEntityData(
        id: id ?? this.id,
        toMe: toMe ?? this.toMe,
        partner: partner ?? this.partner,
        content: content ?? this.content,
        receivedAt: receivedAt ?? this.receivedAt,
        status: status ?? this.status,
      );
  @override
  String toString() {
    return (StringBuffer('MessageEntityData(')
          ..write('id: $id, ')
          ..write('toMe: $toMe, ')
          ..write('partner: $partner, ')
          ..write('content: $content, ')
          ..write('receivedAt: $receivedAt, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, toMe, partner, content, receivedAt, status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MessageEntityData &&
          other.id == this.id &&
          other.toMe == this.toMe &&
          other.partner == this.partner &&
          other.content == this.content &&
          other.receivedAt == this.receivedAt &&
          other.status == this.status);
}

class MessageEntityCompanion extends UpdateCompanion<MessageEntityData> {
  final Value<String> id;
  final Value<bool> toMe;
  final Value<String> partner;
  final Value<String> content;
  final Value<int> receivedAt;
  final Value<String> status;
  final Value<int> rowid;
  const MessageEntityCompanion({
    this.id = const Value.absent(),
    this.toMe = const Value.absent(),
    this.partner = const Value.absent(),
    this.content = const Value.absent(),
    this.receivedAt = const Value.absent(),
    this.status = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MessageEntityCompanion.insert({
    required String id,
    required bool toMe,
    required String partner,
    required String content,
    required int receivedAt,
    required String status,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        toMe = Value(toMe),
        partner = Value(partner),
        content = Value(content),
        receivedAt = Value(receivedAt),
        status = Value(status);
  static Insertable<MessageEntityData> custom({
    Expression<String>? id,
    Expression<bool>? toMe,
    Expression<String>? partner,
    Expression<String>? content,
    Expression<int>? receivedAt,
    Expression<String>? status,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (toMe != null) 'to_me': toMe,
      if (partner != null) 'partner': partner,
      if (content != null) 'content': content,
      if (receivedAt != null) 'received_at': receivedAt,
      if (status != null) 'status': status,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MessageEntityCompanion copyWith(
      {Value<String>? id,
      Value<bool>? toMe,
      Value<String>? partner,
      Value<String>? content,
      Value<int>? receivedAt,
      Value<String>? status,
      Value<int>? rowid}) {
    return MessageEntityCompanion(
      id: id ?? this.id,
      toMe: toMe ?? this.toMe,
      partner: partner ?? this.partner,
      content: content ?? this.content,
      receivedAt: receivedAt ?? this.receivedAt,
      status: status ?? this.status,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (toMe.present) {
      map['to_me'] = Variable<bool>(toMe.value);
    }
    if (partner.present) {
      map['partner'] = Variable<String>(partner.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (receivedAt.present) {
      map['received_at'] = Variable<int>(receivedAt.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
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
          ..write('toMe: $toMe, ')
          ..write('partner: $partner, ')
          ..write('content: $content, ')
          ..write('receivedAt: $receivedAt, ')
          ..write('status: $status, ')
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
  static const VerificationMeta _unreadMeta = const VerificationMeta('unread');
  @override
  late final GeneratedColumn<int> unread = GeneratedColumn<int>(
      'unread', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, lastMessage, lastUpdate, unread];
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
    if (data.containsKey('unread')) {
      context.handle(_unreadMeta,
          unread.isAcceptableOrUnknown(data['unread']!, _unreadMeta));
    } else if (isInserting) {
      context.missing(_unreadMeta);
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
      unread: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}unread'])!,
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
  final int unread;
  const ChatEntityData(
      {required this.id,
      required this.lastMessage,
      required this.lastUpdate,
      required this.unread});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['last_message'] = Variable<String>(lastMessage);
    map['last_update'] = Variable<int>(lastUpdate);
    map['unread'] = Variable<int>(unread);
    return map;
  }

  ChatEntityCompanion toCompanion(bool nullToAbsent) {
    return ChatEntityCompanion(
      id: Value(id),
      lastMessage: Value(lastMessage),
      lastUpdate: Value(lastUpdate),
      unread: Value(unread),
    );
  }

  factory ChatEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ChatEntityData(
      id: serializer.fromJson<String>(json['id']),
      lastMessage: serializer.fromJson<String>(json['lastMessage']),
      lastUpdate: serializer.fromJson<int>(json['lastUpdate']),
      unread: serializer.fromJson<int>(json['unread']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastMessage': serializer.toJson<String>(lastMessage),
      'lastUpdate': serializer.toJson<int>(lastUpdate),
      'unread': serializer.toJson<int>(unread),
    };
  }

  ChatEntityData copyWith(
          {String? id, String? lastMessage, int? lastUpdate, int? unread}) =>
      ChatEntityData(
        id: id ?? this.id,
        lastMessage: lastMessage ?? this.lastMessage,
        lastUpdate: lastUpdate ?? this.lastUpdate,
        unread: unread ?? this.unread,
      );
  @override
  String toString() {
    return (StringBuffer('ChatEntityData(')
          ..write('id: $id, ')
          ..write('lastMessage: $lastMessage, ')
          ..write('lastUpdate: $lastUpdate, ')
          ..write('unread: $unread')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lastMessage, lastUpdate, unread);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ChatEntityData &&
          other.id == this.id &&
          other.lastMessage == this.lastMessage &&
          other.lastUpdate == this.lastUpdate &&
          other.unread == this.unread);
}

class ChatEntityCompanion extends UpdateCompanion<ChatEntityData> {
  final Value<String> id;
  final Value<String> lastMessage;
  final Value<int> lastUpdate;
  final Value<int> unread;
  final Value<int> rowid;
  const ChatEntityCompanion({
    this.id = const Value.absent(),
    this.lastMessage = const Value.absent(),
    this.lastUpdate = const Value.absent(),
    this.unread = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ChatEntityCompanion.insert({
    required String id,
    required String lastMessage,
    required int lastUpdate,
    required int unread,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        lastMessage = Value(lastMessage),
        lastUpdate = Value(lastUpdate),
        unread = Value(unread);
  static Insertable<ChatEntityData> custom({
    Expression<String>? id,
    Expression<String>? lastMessage,
    Expression<int>? lastUpdate,
    Expression<int>? unread,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastMessage != null) 'last_message': lastMessage,
      if (lastUpdate != null) 'last_update': lastUpdate,
      if (unread != null) 'unread': unread,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ChatEntityCompanion copyWith(
      {Value<String>? id,
      Value<String>? lastMessage,
      Value<int>? lastUpdate,
      Value<int>? unread,
      Value<int>? rowid}) {
    return ChatEntityCompanion(
      id: id ?? this.id,
      lastMessage: lastMessage ?? this.lastMessage,
      lastUpdate: lastUpdate ?? this.lastUpdate,
      unread: unread ?? this.unread,
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
    if (unread.present) {
      map['unread'] = Variable<int>(unread.value);
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
          ..write('unread: $unread, ')
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
