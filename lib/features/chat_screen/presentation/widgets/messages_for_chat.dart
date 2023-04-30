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
        return _MessagesListView(messages: state);
      },
    );
  }
}

class _MessagesListView extends StatefulWidget {
  const _MessagesListView({
    // super.key,
    required this.messages,
  });
  final List<UIMessage> messages;

  @override
  State<_MessagesListView> createState() => _MessagesListViewState();
}

class _MessagesListViewState extends State<_MessagesListView> {
  final ScrollController _controller = ScrollController();
  @override
  void initState() {
    super.initState();
    // scrollToMaxExtent();
  }

  void scrollToMaxExtent() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_controller.hasClients) {
        _controller.animateTo(
          _controller.position.maxScrollExtent + 100,
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant _MessagesListView oldWidget) {
    super.didUpdateWidget(oldWidget);
    scrollToMaxExtent();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: _controller,
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 16),
      itemCount: widget.messages.length,
      itemBuilder: (context, index) {
        final message = widget.messages[index];
        return MessageTile(message: message);
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 8);
      },
    );
    // return SingleChildScrollView(
    //   controller: _controller,
    //   child: Column(
    //     children: [...widget.messages.map((e) => MessageTile(message: e))],
    //   ),
    // );
  }
}
