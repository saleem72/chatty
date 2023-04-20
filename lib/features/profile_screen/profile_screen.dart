//

import 'package:chatty/core/presentation/user_cubit/user_cubit.dart';
import 'package:chatty/features/profile_screen/presentation/bloc/profile_data_bloc.dart';
import 'package:chatty/features/profile_screen/presentation/widgets/profile_data_form/profile_data_form.dart';
import 'package:chatty/features/profile_screen/presentation/widgets/profile_image_selector/profile_image_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../dependancy_injection.dart' as di;
import 'presentation/widgets/save_profile_buttton.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ProfileDataBloc(),
        ),
        BlocProvider<UserCubit>(
          create: (context) => di.locator(),
        ),
      ],
      child: const _ProfileScreenContent(),
    );
  }
}

class _ProfileScreenContent extends StatelessWidget {
  // const _ProfileScreenContent({
  //   super.key,
  // });

  const _ProfileScreenContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          SaveProfileButtton(
            onPressed: () => _saveChanges(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 16),
            Center(
              child: SizedBox(
                height: 100,
                child: ProfileImageSelector(),
              ),
            ),
            SizedBox(height: 16),
            ProfileDataForm(),
          ],
        ),
      ),
    );
  }

  _saveChanges(BuildContext context) {
    final state = context.read<ProfileDataBloc>().state;
    context.read<UserCubit>().updateProfile(state.toUpdatedUser());
  }
}
