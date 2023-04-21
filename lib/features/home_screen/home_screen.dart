//

import 'package:chatty/core/presentation/auth_bloc/auth_bloc.dart';
import 'package:chatty/features/home_screen/presentation/cubit/online_users_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/presentation/widgets/app_nav_bar.dart';
import '../../dependancy_injection.dart' as di;
import 'presentation/home_bloc/home_bloc.dart';
import 'presentation/widgets/home_drawer.dart';
import 'presentation/widgets/on_line_users_list_view.dart';

part 'presentation/widgets/home_screen_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            final userId = context.read<AuthBloc>().state.user?.uid ?? '';
            return di.locator<HomeBloc>()
              ..add(HomeEvent.subscripToChats(userId: userId));
          },
        ),
        BlocProvider(create: (_) => OnlineUsersCubit()),
      ],
      child: const _HomeScreenContent(),
    );
  }
}
