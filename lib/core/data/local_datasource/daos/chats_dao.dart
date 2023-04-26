import 'package:drift/drift.dart';

import '../app_database.dart';
import '../entities/chat_entity.dart';
import '../entities/message_entity.dart';

part 'chats_dao.g.dart';

@DriftAccessor(tables: [
  MessageEntity,
  ChatEntity,
])
class ChatsDAO extends DatabaseAccessor<AppDatabase> with _$ChatsDAOMixin {
  ChatsDAO(AppDatabase db) : super(db);

  Stream<List<ChatEntityData>> chats() {
    return select(chatEntity).watch();
  }

  Future<List<ChatEntityData>> fetchChats() {
    return select(chatEntity).get();
  }

  Future<List<MessageEntityData>> messageForChat({required String partnerId}) {
    return (select(messageEntity)
          ..where((tbl) =>
              tbl.receiver.equals(partnerId) | tbl.sender.equals(partnerId)))
        .get();
  }

  Future<void> insertMessage(MessageEntityData message) async {
    await into(messageEntity).insert(message);
  }

  Future<void> insertChat(ChatEntityData chat) async {
    await into(chatEntity).insert(chat);
  }

  Future<void> updateChat(ChatEntityData chat) async {
    await update(chatEntity).replace(chat);
  }

  Future<void> deleteAll() async {
    batch((batch) {
      batch.deleteAll(chatEntity);
      batch.deleteAll(messageEntity);
    });
  }

  Future<List<MessageEntityData>> fetchAllMessages() {
    return select(messageEntity).get();
  }
}
