//

import 'package:chatty/configuration/routing/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/presentation/auth_bloc/auth_bloc.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        switch (state.status) {
          case AuthStatus.unKnown:
            return const SplashScreen();
          case AuthStatus.authzorized:
            return const HomeScreen();
          case AuthStatus.unAuthzorized:
            return const LoginScreen();
        }
      },
    );
  }
}
