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

class RegisterContect extends StatelessWidget {
  const RegisterContect({
    super.key,
    required this.onNavigateToLogin,
  });
  final VoidCallback onNavigateToLogin;

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
              hint: 'display name',
              style: Theme.of(context).textTheme.bodyLarge,
              prefixIcon: const Icon(Icons.person),
              keyboard: TextInputType.text,
              onChange: (value) => context
                  .read<LoginEntriesBloc>()
                  .add(LoginEntriesEvent.usernameHasChanged(username: value)),
            ),
            const SizedBox(height: 16),
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
              label: 'Register',
              backgroundColor: context.colorScheme.primary,
              isEnabled: context
                  .select<LoginEntriesBloc, LoginEntriesState>(
                      (value) => value.state)
                  .isRgisterFormValid,
              onPressed: () => _registerWithPassword(context),
            ),
            const SizedBox(height: 44),
            RichText(
              text: TextSpan(
                text: 'If you already have an account : ',
                style: context.bodyTextStyle,
                children: <TextSpan>[
                  TextSpan(
                    text: 'login',
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
      TapGestureRecognizer()..onTap = onNavigateToLogin;

  _registerWithPassword(BuildContext context) {
    final state = context.read<LoginEntriesBloc>().state;
    context.read<LoginBloc>().add(
          LoginEvent.registerWithUsernameAndPassword(
            username: state.username,
            password: state.password,
            email: state.email,
          ),
        );
  }
}
