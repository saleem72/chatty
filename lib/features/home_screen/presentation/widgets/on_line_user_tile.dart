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
      child: Row(
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: Stack(
              children: [
                ClipOval(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Stack(
                      children: [
                        user.hasImage()
                            ? Image.network(
                                user.imageUrl!,
                                height: 60,
                                width: 60,
                                fit: BoxFit.fill,
                              )
                            : Container(
                                color: Colors.grey.shade400,
                                height: double.maxFinite,
                                width: double.maxFinite,
                                child: const Icon(
                                  Icons.person,
                                  size: 44,
                                  color: Colors.white,
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
                user.isOnline
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 16,
                          width: 16,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Container(
                              height: 12,
                              width: 12,
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user.name ?? ''),
              Text(user.about ?? ''),
            ],
          )
        ],
      ),
    );
  }
}
