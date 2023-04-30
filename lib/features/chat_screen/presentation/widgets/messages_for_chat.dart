//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/domain/models/app_user.dart';
import '../../../../core/domain/models/ui_message.dart';
import '../bloc/user_chat_bloc.dart';
import 'message_tile.dart';

class MessagesForChat extends StatelessWidget {
  const MessagesForChat({
    super.key,
    required this.partner,
  });
  final AppUser partner;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserChatBloc, List<UIMessage>>(
      builder: (context, state) {
        return _buildList(context, state);
      },
    );
  }

  Widget _buildList(BuildContext context, List<UIMessage> messages) {
    return ListView.separated(
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];
        return MessageTile(message: message);
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 8);
      },
    );
  }
}
