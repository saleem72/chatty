//

import 'package:chatty/configuration/assets/app_icons.dart';
import 'package:chatty/core/presentation/auth_bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return (state.user?.hasImage() ?? false)
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ClipOval(
                      child: FadeInImage(
                        placeholder: const AssetImage(AppIcons.logo),
                        image: NetworkImage(state.user!.imageUrl!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              )
            : Center(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    margin: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.person,
                        color: Theme.of(context).colorScheme.primary,
                        size: 84,
                      ),
                    ),
                  ),
                ),
              );
      },
    );
  }
}
