import 'package:drift/drift.dart';

class MessageEntity extends Table {
  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text()();
  BoolColumn get toMe => boolean()();
  TextColumn get partner => text()();
  TextColumn get content => text()();
  IntColumn get receivedAt => integer()();
  TextColumn get status => text()();
}
