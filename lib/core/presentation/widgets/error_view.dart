//

import 'dart:ui';

import 'package:flutter/material.dart';

import 'app_text_button.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({
    super.key,
    required this.error,
    required this.onClose,
  });
  final String error;
  final VoidCallback onClose;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.black26,
            ),
          ),
        ),
        Center(
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            color: Theme.of(context).colorScheme.error,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          error,
                          softWrap: true,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.onError,
                              ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  AppTextButton(
                    backgroundColor:
                        Theme.of(context).colorScheme.errorContainer,
                    foregroundColor:
                        Theme.of(context).colorScheme.onErrorContainer,
                    label: 'Try again',
                    onPressed: onClose,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
