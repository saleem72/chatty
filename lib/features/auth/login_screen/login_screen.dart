//

import 'package:chatty/configuration/assets/app_icons.dart';
import 'package:chatty/core/presentation/auth_bloc/auth_bloc.dart';
import 'package:chatty/core/presentation/user_cubit/user_cubit.dart';
import 'package:chatty/dependancy_injection.dart';
import 'package:chatty/features/auth/login_screen/presentation/bloc/login_entries_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/presentation/widgets/app_text_button.dart';
import '../../../core/presentation/widgets/app_text_field.dart';
import '../../../core/presentation/widgets/error_view.dart';
import 'presentation/login_bloc/login_bloc.dart';

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

class LoginScreenContents extends StatelessWidget {
  const LoginScreenContents({
    super.key,
  });

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
        if (state is LoginSuccess) {
          context.read<UserCubit>().setUser(state.user);
        }
        context.read<AuthBloc>().add(const AuthEvent.checkForAuthStatus());
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Login'),
          ),
          body: Stack(
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

  Column _content(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        AppTextField(
          hint: 'username',
          style: Theme.of(context).textTheme.bodyLarge,
          prefixIcon: const Icon(Icons.person),
          keyboard: TextInputType.emailAddress,
          onChange: (value) => context
              .read<LoginEntriesBloc>()
              .add(LoginEntriesEvent.usernameHasChanged(username: value)),
        ),
        const SizedBox(height: 16),
        AppTextField(
          hint: 'Password',
          keyboard: TextInputType.visiblePassword,
          prefixIcon: const Icon(Icons.lock),
          suffixIcon: Icon(
            Icons.remove_red_eye,
            color: Theme.of(context).colorScheme.primary,
          ),
          isSecure: true,
          style: Theme.of(context).textTheme.bodyLarge,
          onChange: (value) => context
              .read<LoginEntriesBloc>()
              .add(LoginEntriesEvent.passwordHasChanged(password: value)),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: AppTextButton(
                label: 'login',
                isEnabled: context
                    .select<LoginEntriesBloc, LoginEntriesState>(
                        (value) => value.state)
                    .isFormValid,
                onPressed: () => _signInWithPassword(context),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: AppTextButton(
                label: 'Register',
                isEnabled: context
                    .select<LoginEntriesBloc, LoginEntriesState>(
                        (value) => value.state)
                    .isFormValid,
                onPressed: () => _registerWithPassword(context),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        AppTextButton(
          label: 'Sign in with google',
          backgroundColor: Colors.white,
          foregroundColor: Colors.green,
          hasBorders: true,
          icon: Image.asset(
            AppIcons.google,
            height: 18,
            width: 18,
          ),
          onPressed: () => context
              .read<LoginBloc>()
              .add(const LoginEvent.signInWithGoogle()),
        ),
      ],
    );
  }

  void _signInWithPassword(BuildContext context) {
    final state = context.read<LoginEntriesBloc>().state;
    context.read<LoginBloc>().add(
          LoginEvent.signInWithUsernameAndPassword(
            username: state.username,
            password: state.password,
          ),
        );
  }

  _registerWithPassword(BuildContext context) {
    final state = context.read<LoginEntriesBloc>().state;
    context.read<LoginBloc>().add(
          LoginEvent.registerWithUsernameAndPassword(
            username: state.username,
            password: state.password,
          ),
        );
  }
}
