//

import 'package:chatty/core/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/domain/models/app_user.dart';
import '../../../../core/domain/models/fb_message.dart';
import '../../../../core/domain/models/message_deliver_status.dart';
import '../../../../core/presentation/auth_bloc/auth_bloc.dart';
import '../bloc/user_chat_bloc.dart';
import 'send_message_text_field.dart';

class SendMessageView extends StatefulWidget {
  const SendMessageView({
    super.key,
    required this.user,
  });
  final AppUser user;
  @override
  State<SendMessageView> createState() => _SendMessageViewState();
}

class _SendMessageViewState extends State<SendMessageView> {
  final TextEditingController _message = TextEditingController();

  @override
  void dispose() {
    _message.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 4,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Color(0xFFADB5BD),
              ),
            ),
            Expanded(
              child: SendMessageTextField(controller: _message),
            ),
            IconButton(
              onPressed: () => _sendMessage(context),
              icon: Icon(
                Icons.send_rounded,
                color: context.colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _sendMessage(BuildContext context) {
    final sender = context.read<AuthBloc>().state.user?.uid ?? '';
    final receiver = widget.user.uid;
    final message = FBMessage(
      sender: sender,
      receiver: receiver,
      content: _message.text,
      timestamp: DateTime.now(),
      status: MessageDeliverStatus.sent,
    );
    context
        .read<UserChatBloc>()
        .add(UserChatEvent.sendMessage(message: message));
    _message.text = '';
  }
}
