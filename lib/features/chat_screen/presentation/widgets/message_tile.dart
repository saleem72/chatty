//

import 'package:chatty/core/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/domain/models/ui_message.dart';
import 'bubble.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({
    super.key,
    required this.message,
  });
  final UIMessage message;
  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxWidth: context.medaiQuery.size.width * 0.6,
      child: Row(
        mainAxisAlignment:
            message.toMe ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          Column(
            children: [
              Bubble(
                toMe: message.toMe ? false : true,
                child: Text(
                  message.content,
                  style: context.bodyTextStyle?.copyWith(
                    color: message.toMe ? Colors.white : Colors.black,
                  ),
                ),
              ),
              Container(
                constraints: BoxConstraints(
                  maxWidth: context.medaiQuery.size.width * 0.6,
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                child: Row(
                  mainAxisAlignment: message.toMe
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.start,
                  children: [
                    Text(
                      DateFormat('h:mm a').format(message.receivedAt),
                      style: context.captionTextStyle?.copyWith(
                        color: const Color(0xFF8A9099),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
