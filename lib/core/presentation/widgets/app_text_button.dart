//

import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.backgroundColor = Colors.green,
    this.foregroundColor = Colors.white,
    this.hasBorders = false,
    this.isEnabled = true,
  });
  final String label;
  final VoidCallback onPressed;
  final Widget? icon;
  final Color backgroundColor;
  final Color foregroundColor;
  final bool hasBorders;
  final bool isEnabled;
  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: Colors.grey.shade200,
      child: InkWell(
        onTap: isEnabled ? onPressed : null,
        child: Opacity(
          opacity: isEnabled ? 1 : 0.6,
          child: Container(
            height: 44,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(8),
              border: hasBorders ? Border.all() : null,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null) icon!,
                if (icon != null) const SizedBox(width: 16),
                Text(
                  label,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: foregroundColor,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
