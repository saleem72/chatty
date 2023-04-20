//

import 'package:flutter/material.dart';

class AppNavBar extends StatelessWidget with PreferredSizeWidget {
  const AppNavBar({
    super.key,
    required this.title,
    this.actions = const [],
  });
  final String title;
  final List<Widget> actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
