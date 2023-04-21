import 'package:chatty/configuration/routing/app_router.dart';
import 'package:chatty/configuration/routing/app_screens.dart';
import 'package:chatty/core/presentation/auth_bloc/auth_bloc.dart';
import 'package:chatty/dependancy_injection.dart' as di;
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'configuration/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initDependancies();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => di.locator(),
        ),
      ],
      child: const ChattyApp(),
    );
  }
}

class ChattyApp extends StatelessWidget {
  const ChattyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      locale: const Locale('en'),
      onGenerateRoute: AppRouter.generate,
      initialRoute: AppScreens.initial,
    );
  }
}
