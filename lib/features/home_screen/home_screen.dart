//

import 'package:chatty/core/extensions/build_context_extension.dart';
import 'package:chatty/core/presentation/auth_bloc/auth_bloc.dart';
import 'package:chatty/features/home_screen/presentation/chats_bloc/chats_bloc.dart';
import 'package:chatty/features/home_screen/presentation/online_users_cubit/online_users_cubit.dart';
import 'package:chatty/features/home_screen/presentation/widgets/chats_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../dependancy_injection.dart' as di;
import 'presentation/home_bloc/home_bloc.dart';
import 'presentation/widgets/home_drawer.dart';
import 'presentation/widgets/on_line_users_list_view.dart';

part 'presentation/widgets/home_screen_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final userId = context.read<AuthBloc>().state.user?.uid ?? '';
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return di.locator<HomeBloc>();
          },
        ),
        BlocProvider(
          create: (_) => OnlineUsersCubit(
            service: di.locator(),
          )..fetchUsers(userId),
        ),
        BlocProvider<ChatsBloc>(
          lazy: false,
          create: (context) =>
              di.locator()..add(ChatsEvent.subscribe(userId: userId)),
        )
      ],
      child: _HomeScreenContent(
        userId: userId,
      ),
    );
  }
}
