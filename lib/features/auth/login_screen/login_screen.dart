//

import 'package:chatty/dependancy_injection.dart';
import 'package:chatty/features/auth/login_screen/presentation/bloc/login_entries_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/login_bloc/login_bloc.dart';
import 'presentation/widgets/login_screen_contents.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => locator<LoginBloc>(),
        ),
        BlocProvider(
          create: (_) => locator<LoginEntriesBloc>(),
        ),
      ],
      child: const LoginScreenContents(),
    );
  }
}
