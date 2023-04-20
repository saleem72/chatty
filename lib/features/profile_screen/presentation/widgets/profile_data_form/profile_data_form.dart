//

import 'package:chatty/core/presentation/user_cubit/user_cubit.dart';
import 'package:chatty/core/presentation/widgets/app_text_field.dart';
import 'package:chatty/features/profile_screen/presentation/bloc/profile_data_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileDataForm extends StatefulWidget {
  const ProfileDataForm({super.key});

  @override
  State<ProfileDataForm> createState() => _ProfileDataFormState();
}

class _ProfileDataFormState extends State<ProfileDataForm> {
  final TextEditingController _nameText = TextEditingController();
  final TextEditingController _emailText = TextEditingController();
  final TextEditingController _aboutText = TextEditingController();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final user = context.read<UserCubit>().state;
      _nameText.text = user.name ?? '';
      _emailText.text = user.email ?? '';
      _aboutText.text = user.about ?? '';
      context
          .read<ProfileDataBloc>()
          .add(ProfileDataEvent.userHasChanged(user: user));
    });
  }

  @override
  void dispose() {
    _nameText.dispose();
    _emailText.dispose();
    _aboutText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          AppTextField(
            controller: _nameText,
            onChange: (value) => context
                .read<ProfileDataBloc>()
                .add(ProfileDataEvent.nameHasChanged(name: value)),
            hint: 'name',
          ),
          const SizedBox(height: 16),
          AppTextField(
            controller: _emailText,
            onChange: (value) => context
                .read<ProfileDataBloc>()
                .add(ProfileDataEvent.emailHasChanged(email: value)),
            hint: 'email',
          ),
          const SizedBox(height: 16),
          AppTextField(
            controller: _aboutText,
            onChange: (value) => context
                .read<ProfileDataBloc>()
                .add(ProfileDataEvent.aboutHasChanged(about: value)),
            hint: 'about',
          ),
        ],
      ),
    );
  }
}
