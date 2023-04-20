//

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

const darkColorPalette = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.primary80,
    onPrimary: AppColors.primary20,
    primaryContainer: AppColors.primary30,
    onPrimaryContainer: AppColors.primary90,
    inversePrimary: AppColors.primary40,
    secondary: AppColors.secondary80,
    onSecondary: AppColors.secondary20,
    secondaryContainer: AppColors.secondary30,
    onSecondaryContainer: AppColors.secondary90,
    tertiary: AppColors.tertiary80,
    onTertiary: AppColors.tertiary20,
    tertiaryContainer: AppColors.tertiary30,
    onTertiaryContainer: AppColors.tertiary90,
    error: AppColors.error80,
    onError: AppColors.error20,
    errorContainer: AppColors.error30,
    onErrorContainer: AppColors.error90,
    background: AppColors.neutral10,
    onBackground: AppColors.neutral90,
    surface: AppColors.neutralVariant30,
    onSurface: AppColors.neutralVariant80,
    inverseSurface: AppColors.neutral90,
    onInverseSurface: AppColors.neutral10,
    surfaceVariant: AppColors.neutralVariant30,
    onSurfaceVariant: AppColors.neutralVariant80,
    outline: AppColors.neutralVariant80);

const lightColorPalette = ColorScheme(
  brightness: Brightness.light,
  primary: AppColors.primary40,
  onPrimary: Colors.white,
  primaryContainer: AppColors.primary90,
  onPrimaryContainer: AppColors.primary10,
  inversePrimary: AppColors.primary80,
  secondary: AppColors.secondary40,
  onSecondary: Colors.white,
  secondaryContainer: AppColors.secondary90,
  onSecondaryContainer: AppColors.secondary10,
  tertiary: AppColors.tertiary40,
  onTertiary: Colors.white,
  tertiaryContainer: AppColors.tertiary90,
  onTertiaryContainer: AppColors.tertiary10,
  error: AppColors.error40,
  onError: Colors.white,
  errorContainer: AppColors.error90,
  onErrorContainer: AppColors.error10,
  background: AppColors.neutral99,
  onBackground: AppColors.neutral10,
  surface: AppColors.neutralVariant90,
  onSurface: AppColors.neutralVariant30,
  inverseSurface: AppColors.neutral20,
  onInverseSurface: AppColors.neutral95,
  surfaceVariant: AppColors.neutralVariant90,
  onSurfaceVariant: AppColors.neutralVariant30,
  outline: AppColors.neutralVariant50,
);

final lightTheme = ThemeData(
  colorScheme: lightColorPalette,
  scaffoldBackgroundColor: AppColors.neutral99,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.primary40,
    elevation: 2,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColors.primary40,
    foregroundColor: Colors.white,
  ),
  // Montserrat
  textTheme: GoogleFonts.montserratAlternatesTextTheme(),
);

final darkTheme = ThemeData(
  colorScheme: darkColorPalette,
  scaffoldBackgroundColor: AppColors.neutral10,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.primary40,
    elevation: 2,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColors.primary80,
    foregroundColor: AppColors.primary20,
  ),
  textTheme: GoogleFonts.montserratAlternatesTextTheme(),
);
