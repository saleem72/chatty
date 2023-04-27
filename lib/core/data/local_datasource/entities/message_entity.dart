import 'package:drift/drift.dart';

class MessageEntity extends Table {
  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text()();
  TextColumn get sender => text()();
  TextColumn get receiver => text()();
  TextColumn get content => text()();
  TextColumn get status => text()();
  IntColumn get receivedAt => integer()();
}
