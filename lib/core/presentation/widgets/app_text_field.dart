//

import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.hint,
    this.inputAction = TextInputAction.done,
    this.style,
    required this.onChange,
    this.prefixIcon,
    this.suffixIcon,
    this.isSecure = false,
    this.keyboard = TextInputType.text,
    this.controller,
  });

  final TextStyle? style;
  final String hint;
  final TextInputAction inputAction;
  final Function(String) onChange;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool isSecure;
  final TextInputType keyboard;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black54, width: 1.0),
      ),
      child: TextField(
        controller: controller,
        cursorColor: Theme.of(context).colorScheme.primary,
        textInputAction: inputAction,
        autocorrect: false,
        textCapitalization: TextCapitalization.none,
        obscureText: isSecure,
        onChanged: onChange,
        keyboardType: keyboard,
        style: style,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: style?.copyWith(
            color: Colors.grey.shade400,
          ),
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
