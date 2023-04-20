//

import 'package:chatty/core/domain/models/app_user.dart';
import 'package:chatty/core/presentation/user_cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, AppUser>(
      builder: (context, state) {
        return state.hasImage()
            ? Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(state.imageUrl!),
                  ),
                  shape: BoxShape.circle,
                ),
              )
            : Container(
                height: 44,
                width: 44,
                margin: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    Icons.person,
                    color: Theme.of(context).colorScheme.primary,
                    size: 32,
                  ),
                ),
              );
      },
    );
  }
}
