import 'package:drift/drift.dart';

class ChatEntity extends Table {
  @override
  Set<Column> get primaryKey => {id};
  TextColumn get id => text()();
  TextColumn get lastMessage => text()();
  IntColumn get lastUpdate => integer()();
  IntColumn get unread => integer()();
  // TODO add unread amount
}
