//

import 'package:chatty/core/extensions/build_context_extension.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../configuration/assets/app_icons.dart';
import '../../../../../core/presentation/widgets/app_text_button.dart';
import '../../../../../core/presentation/widgets/app_text_field.dart';
import '../bloc/login_entries_bloc.dart';
import '../login_bloc/login_bloc.dart';

class LoginContect extends StatelessWidget {
  const LoginContect({
    super.key,
    required this.onNavigateToRegister,
  });
  final VoidCallback onNavigateToRegister;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.maxFinite,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 44),
            SizedBox(
              width: 75,
              height: 75,
              child: Image.asset(
                AppIcons.logo,
                color: context.colorScheme.primary,
              ),
            ),
            const SizedBox(height: 44),
            AppTextField(
              hint: 'email',
              style: Theme.of(context).textTheme.bodyLarge,
              prefixIcon: const Icon(Icons.email),
              keyboard: TextInputType.emailAddress,
              onChange: (value) => context
                  .read<LoginEntriesBloc>()
                  .add(LoginEntriesEvent.emailHasChanged(email: value)),
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
            AppTextButton(
              label: 'login',
              backgroundColor: context.colorScheme.primary,
              isEnabled: context
                  .select<LoginEntriesBloc, LoginEntriesState>(
                      (value) => value.state)
                  .isLoginFormValid,
              onPressed: () => _signInWithPassword(context),
            ),
            const SizedBox(height: 16),
            Text(
              'Connect us with',
              style: context.titleTextStyle,
            ),
            const SizedBox(height: 32),
            AppTextButton(
              label: 'Sign in with google',
              backgroundColor: Colors.white,
              foregroundColor: context.colorScheme.primary,
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
            const SizedBox(height: 44),
            RichText(
              text: TextSpan(
                text: 'If you are not member already: ',
                style: context.bodyTextStyle,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Create new account',
                    recognizer: _createAccount(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: context.colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  TapGestureRecognizer _createAccount() =>
      TapGestureRecognizer()..onTap = onNavigateToRegister;

  void _signInWithPassword(BuildContext context) {
    final state = context.read<LoginEntriesBloc>().state;
    context.read<LoginBloc>().add(
          LoginEvent.signInWithUsernameAndPassword(
            email: state.email,
            password: state.password,
          ),
        );
  }
}
