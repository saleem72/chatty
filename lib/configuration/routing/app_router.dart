//

import 'package:chatty/configuration/routing/app_screens.dart';
import 'package:chatty/configuration/routing/route_error_screen.dart';
import 'package:chatty/core/domain/models/app_user.dart';
import 'package:chatty/features/chat_screen/chat_screen.dart';

import 'package:flutter/material.dart';

import 'screens.dart';

class AppRouter {
  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case AppScreens.initial:
        return MaterialPageRoute(builder: (_) => const LandingScreen());
      case AppScreens.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case AppScreens.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case AppScreens.profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case AppScreens.chat:
        return MaterialPageRoute(
            builder: (_) => ChatScreen(
                  user: settings.arguments as AppUser,
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => RouteErrorScreen(
                route: settings.name ?? 'no route provided',
                error: 'is not valid route'));
    }
  }
}
