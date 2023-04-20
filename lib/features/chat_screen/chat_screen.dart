//

import 'package:chatty/core/domain/models/app_user.dart';
import 'package:chatty/core/extensions/build_context_extension.dart';
import 'package:chatty/core/presentation/widgets/app_nav_bar.dart';
import 'package:flutter/material.dart';

part 'presentation/widgets/chat_app_bar_title.dart';
part 'presentation/widgets/chat_screen_content.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    super.key,
    required this.user,
  });
  final AppUser user;
  @override
  Widget build(BuildContext context) {
    return _ChatScreenContent(user: user);
  }
}
