//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/presentation/auth_bloc/auth_bloc.dart';
import '../../../../../core/presentation/widgets/error_view.dart';
import '../login_bloc/login_bloc.dart';
import 'login_contect.dart';
import 'register_contect.dart';

class LoginScreenContents extends StatefulWidget {
  const LoginScreenContents({
    super.key,
  });

  @override
  State<LoginScreenContents> createState() => _LoginScreenContentsState();
}

class _LoginScreenContentsState extends State<LoginScreenContents> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listenWhen: (previous, current) {
        if (current != previous && current is LoginSuccess) {
          return true;
        } else {
          return false;
        }
      },
      listener: (context, state) {
        context.read<AuthBloc>().add(const AuthEvent.checkForAuthStatus());
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: _screenTitle(context),
          ),
          body: Stack(
            fit: StackFit.expand,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: _content(context),
              ),
              if (state is LoginFailure)
                ErrorView(
                  error: state.failure.map(
                    operationNotAllowed: (_) =>
                        "You cann't go as guest for now",
                    unknownError: (_) =>
                        'Some thing wrong happend\nplase try again later',
                    weakPassword: (_) => 'The password provided is too weak.',
                    emailAlreadyInUse: (_) =>
                        'The account already exists for that email.',
                    unValidEmail: (_) =>
                        'The email address is badly formatted.',
                    invalidUsernameOrPassword: (_) =>
                        'Invalid user name or password.',
                  ),
                  onClose: () => context
                      .read<LoginBloc>()
                      .add(const LoginEvent.clearError()),
                ),
              if (state is LoginLoding)
                const Center(
                  child: CircularProgressIndicator(),
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _screenTitle(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      child: isLogin
          ? const Text(
              'Login',
              key: ValueKey('title_login'),
            )
          : const Text(
              'Register',
              key: ValueKey('title_register'),
            ),
    );
  }

  Widget _content(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1.5, 0),
            end: const Offset(0, 0),
          ).animate(animation),
          child: child,
        );
      },
      child: isLogin
          ? LoginContect(
              key: const ValueKey('Login'),
              onNavigateToRegister: () => setState(() {
                isLogin = false;
              }),
            )
          : RegisterContect(
              key: const ValueKey('Register'),
              onNavigateToLogin: () => setState(() {
                isLogin = true;
              }),
            ),
    );
  }
}
