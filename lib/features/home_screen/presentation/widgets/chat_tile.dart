//

import 'package:chatty/configuration/routing/app_screens.dart';
import 'package:chatty/core/domain/models/chat.dart';
import 'package:chatty/core/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    super.key,
    required this.chat,
  });
  final Chat chat;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(AppScreens.chat, arguments: chat.partner);
      },
      child: Row(
        children: [
          ClipOval(
            child: SizedBox(
              height: 60,
              // width: 75,
              child: AspectRatio(
                aspectRatio: 1,
                child: chat.partner.hasImage()
                    ? Image.network(
                        chat.partner.imageUrl!,
                        height: 75,
                        width: 75,
                        fit: BoxFit.fill,
                      )
                    : const Icon(
                        Icons.person,
                        size: 44,
                      ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  chat.partner.name ?? '',
                  style: context.titleTextStyle?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  chat.lastMessage,
                  style: context.bodyTextStyle?.copyWith(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          if (chat.unRead > 0)
            Container(
              decoration: BoxDecoration(
                color: context.colorScheme.primary,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(6),
              child: Center(
                child: Text(
                  chat.unRead.toString(),
                  style: context.bodyTextStyle?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
