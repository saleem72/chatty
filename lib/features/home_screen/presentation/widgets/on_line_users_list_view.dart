//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../online_users_cubit/online_users_cubit.dart';
import '../../../../core/domain/models/app_user.dart';
import 'on_line_user_tile.dart';

class OnlineUsersListView extends StatelessWidget {
  const OnlineUsersListView({
    super.key,
    required this.userId,
  });
  final String userId;
  @override
  Widget build(BuildContext context) {
    return _widgetBuilder(context);
  }

  Widget _widgetBuilder(BuildContext context) {
    return BlocBuilder<OnlineUsersCubit, List<AppUser>>(
      builder: (context, state) {
        return _buildChatsList(context, state);
      },
    );
  }

  Widget _buildChatsList(BuildContext context, List<AppUser> users) {
    return ListView.separated(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      itemCount: users.length,
      itemBuilder: (BuildContext context, int index) {
        final user = users[index];
        return OnLineUserTile(user: user);
      },
      separatorBuilder: (_, index) {
        return const Divider(
          indent: 32,
          endIndent: 32,
          color: Colors.black,
        );
      },
    );
  }
}
