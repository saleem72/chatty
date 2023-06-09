// ignore_for_file: public_member_api_docs, sort_constructors_first
//

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'safe_keys.dart';

class Safe {
  final SharedPreferences _storage;
  Safe({
    required SharedPreferences storage,
  }) : _storage = storage;

  // Localization
  Future<Locale> setLocal(String languageCode) async {
    await _storage.setString(SafeKeys.languageCode, languageCode);
    return _locale(languageCode);
  }

  String getLanguageCode() {
    return _storage.getString(SafeKeys.languageCode) ?? SafeKeys.english;
  }

  Locale getLocal() {
    final languageCode =
        _storage.getString(SafeKeys.languageCode) ?? SafeKeys.english;
    return _locale(languageCode);
  }

  Locale _locale(String languageCode) {
    switch (languageCode) {
      case SafeKeys.english:
        return const Locale(SafeKeys.english, '');
      case SafeKeys.arabic:
        return const Locale(SafeKeys.arabic, '');
      default:
        return const Locale(SafeKeys.english, '');
    }
  }

  // Themeing
  Future<String> setThemeMode(String mode) async {
    await _storage.setString(SafeKeys.themeKey, mode);
    return mode;
  }

  ThemeMode getThemeMode() {
    final string = _storage.getString(SafeKeys.themeKey);
    if (string == null) {
      return ThemeMode.system;
    }
    if (string == 'dark') {
      return ThemeMode.dark;
    } else {
      return ThemeMode.light;
    }
  }

  // First run
  bool get isFirstRun => _storage.getBool(SafeKeys.isFirstRun) ?? true;
  Future updateFirstRun() async {
    await _storage.setBool(SafeKeys.isFirstRun, false);
  }
}
