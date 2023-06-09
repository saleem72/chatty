//

import 'package:chatty/core/domain/models/app_user.dart';
import 'package:chatty/core/presentation/widgets/app_nav_bar.dart';
import 'package:chatty/dependancy_injection.dart' as di;
import 'package:chatty/features/chat_screen/presentation/bloc/user_chat_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/widgets/messages_for_chat.dart';
import 'presentation/widgets/send_message_view.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserChatBloc>(
          create: (_) =>
              di.locator()..add(UserChatEvent.subscribe(userId: user.uid)),
        )
      ],
      child: _ChatScreenContent(user: user),
    );
  }
}
