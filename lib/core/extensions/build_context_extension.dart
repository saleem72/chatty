//

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension Translation on BuildContext {
  AppLocalizations get translate => AppLocalizations.of(this)!;

  TextStyle? get titleTextStyle => Theme.of(this).textTheme.titleMedium;
  TextStyle? get bodyTextStyle => Theme.of(this).textTheme.bodyMedium;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  MediaQueryData get medaiQuery => MediaQuery.of(this);
}
