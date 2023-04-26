//

import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

import 'daos/chats_dao.dart';
import 'entities/chat_entity.dart';
import 'entities/message_entity.dart';

part 'app_database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'db.sqlite'));

    // if (await file.exists()) {
    //   await file.delete();
    // }
    return NativeDatabase(file);
  });
}

@DriftDatabase(
  tables: [
    MessageEntity,
    ChatEntity,
  ],
  daos: [
    ChatsDAO,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      beforeOpen: (details) async {
        await customStatement('PRAGMA foreign_keys = ON');
      },
      onCreate: (m) async {
        await m.createAll();
      },
      onUpgrade: (m, from, to) async {},
    );
  }
}
