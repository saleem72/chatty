//

import 'package:flutter/material.dart';

/// A simple icon button with a solid color background and rounded corners.
///
/// The [SimpleIconButton] displays an [icon] inside a circular-shaped button with
/// a solid color background. The button's background color is defined by the
/// [colorPalette] property, which defaults to the [ColorPalette.primary] color
/// scheme. The [iconSize] parameter controls the size of the [icon] within the button.
///
/// When the button is pressed, the [onPressed] callback is invoked.
///
/// See also:
/// * [IconButton], a Material Design icon button.
///
class SimpleIconButton extends StatelessWidget {
  const SimpleIconButton({
    super.key,
    required this.icon,
    this.iconSize,
    this.onPressed,
  });

  /// The icon to display inside the button.
  final IconData icon;

  /// The size of the icon within the button.
  final double? iconSize;

  /// The callback function to invoke when the button is pressed.
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: iconSize,
      style: IconButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      onPressed: onPressed,
      icon: Icon(icon, color: Colors.white),
    );
  }
}
