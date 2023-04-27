//

import 'package:chatty/core/domain/models/chat.dart';
import 'package:chatty/features/home_screen/presentation/widgets/chat_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../chats_bloc/chats_bloc.dart';

class ChatsListView extends StatelessWidget {
  const ChatsListView({
    super.key,
    required this.userId,
  });
  final String userId;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatsBloc, List<Chat>>(
      builder: (context, state) {
        return _buildChatsList(context, state);
      },
    );
  }

  Widget _buildChatsList(BuildContext context, List<Chat> chats) {
    return ListView.separated(
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
      itemCount: chats.length,
      itemBuilder: (BuildContext context, int index) {
        final chat = chats[index];
        return ChatTile(chat: chat);
      },
      separatorBuilder: (_, index) {
        return const Divider(
          indent: 32,
          endIndent: 32,
          color: Colors.black,
        );
      },
    );
  }
}
