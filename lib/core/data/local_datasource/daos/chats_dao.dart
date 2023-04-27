import 'package:collection/collection.dart';
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

  Stream<List<MessageEntityData>> messagesForPartner(String partnerId) {
    return (select(messageEntity)
          ..where((tbl) => tbl.partner.equals(partnerId)))
        .watch();
  }

  Future<List<ChatEntityData>> fetchChats() {
    return select(chatEntity).get();
  }

  Future<List<MessageEntityData>> messageForChat({required String partnerId}) {
    return (select(messageEntity)
          ..where((tbl) => tbl.partner.equals(partnerId)))
        .get();
  }

  Future<void> insertMessage(MessageEntityData message) async {
    await into(messageEntity).insert(message);
  }

  Future<void> insertChat(ChatEntityData chat) async {
    await into(chatEntity).insertOnConflictUpdate(chat);
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

  Future<void> addMesssageToLocalDB(MessageEntityData messageToAdd) async {
    final chats = await fetchChats();
    final chat =
        chats.firstWhereOrNull((element) => element.id == messageToAdd.partner);

    insertMessage(messageToAdd);

    if (chat == null) {
      final entity = ChatEntityData(
        id: messageToAdd.partner,
        lastMessage: messageToAdd.content,
        lastUpdate: DateTime.now().microsecondsSinceEpoch,
      );
      await insertChat(entity);
    } else {
      final chatToUpdate = chat.copyWith(
        lastMessage: messageToAdd.content,
      );
      final entity = ChatEntityData(
        id: chatToUpdate.id,
        lastMessage: chatToUpdate.lastMessage,
        lastUpdate: DateTime.now().microsecondsSinceEpoch,
      );

      await updateChat(entity);
    }
  }
}
