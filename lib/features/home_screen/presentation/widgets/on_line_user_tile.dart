//

import 'package:chatty/configuration/routing/app_screens.dart';
import 'package:flutter/material.dart';

import '../../../../core/domain/models/app_user.dart';

class OnLineUserTile extends StatelessWidget {
  const OnLineUserTile({
    super.key,
    required this.user,
  });
  final AppUser user;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AppScreens.chat, arguments: user);
      },
      child: ListTile(
        leading: ClipOval(
          child: SizedBox(
            height: 75,
            // width: 75,
            child: AspectRatio(
              aspectRatio: 1,
              child: user.hasImage()
                  ? Image.network(
                      user.imageUrl!,
                      height: 75,
                      width: 75,
                      fit: BoxFit.fill,
                    )
                  : const Icon(
                      Icons.person,
                      size: 44,
                    ),
            ),
          ),
        ),
        title: Text(user.name ?? ''),
        subtitle: Text(user.about ?? ''),
      ),
    );
  }
}
