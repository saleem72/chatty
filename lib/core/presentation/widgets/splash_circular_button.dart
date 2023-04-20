//

import 'package:flutter/material.dart';

class SplashCircularButton extends StatelessWidget {
  const SplashCircularButton({
    super.key,
    this.foregroundColor = Colors.green,
    this.splashColor = Colors.greenAccent,
    required this.icon,
    required this.onPressed,
  });
  final Color foregroundColor;
  final Color splashColor;
  final Widget icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: foregroundColor,
        elevation: 5,
        child: InkWell(
          splashColor: splashColor,
          onTap: onPressed,
          child: icon,
        ),
      ),
    );
  }
}
