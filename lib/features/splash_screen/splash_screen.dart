//

import 'package:chatty/configuration/assets/app_icons.dart';
import 'package:chatty/core/extensions/build_context_extension.dart';
import 'package:chatty/core/presentation/auth_bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    if (mounted) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        if (mounted) {
          _navigate(context);
        }
        //
      });
    }
  }

  _navigate(BuildContext context) async {
    if (mounted) {
      await Future.delayed(const Duration(seconds: 2));
      if (mounted) {
        context.read<AuthBloc>().add(const AuthEvent.checkForAuthStatus());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              AppIcons.logo,
              height: 150,
              width: 150,
            ),
            const SizedBox(height: 16),
            Text(
              context.translate.app_name,
              style: GoogleFonts.sedgwickAveDisplay(
                  textStyle: const TextStyle(fontSize: 44)),
            ),
          ],
        ),
      ),
    );
  }
}
