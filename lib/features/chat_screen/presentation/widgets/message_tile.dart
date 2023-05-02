//

import 'package:chatty/configuration/assets/app_icons.dart';
import 'package:chatty/core/domain/models/message_deliver_status.dart';
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
                child: message.toMe
                    ? _onlyDate(context)
                    : _dateWithStatus(context),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _dateWithStatus(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          DateFormat('h:mm a').format(message.receivedAt),
          style: context.captionTextStyle?.copyWith(
            color: const Color(0xFF8A9099),
          ),
        ),
        MessageStatusIcon(status: message.status),
      ],
    );
  }

  Widget _onlyDate(BuildContext context) {
    return Row(
      mainAxisAlignment:
          message.toMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Text(
          DateFormat('h:mm a').format(message.receivedAt),
          style: context.captionTextStyle?.copyWith(
            color: const Color(0xFF8A9099),
          ),
        ),
      ],
    );
  }
}

class MessageStatusIcon extends StatelessWidget {
  const MessageStatusIcon({
    super.key,
    required this.status,
  });
  final MessageDeliverStatus status;
  @override
  Widget build(BuildContext context) {
    switch (status) {
      case MessageDeliverStatus.sent:
        return Icon(Icons.check, color: context.colorScheme.primaryContainer);
      case MessageDeliverStatus.delivered:
        return Image.asset(
          AppIcons.messageRead,
          height: 20,
          width: 20,
          color: context.colorScheme.primaryContainer,
        );
      case MessageDeliverStatus.received:
        return Image.asset(
          AppIcons.messageRead,
          height: 20,
          width: 20,
          color: context.colorScheme.primary,
        );
    }
  }
}
