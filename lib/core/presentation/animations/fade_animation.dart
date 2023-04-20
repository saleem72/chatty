//

import 'package:chatty/configuration/assets/app_icons.dart';
import 'package:flutter/material.dart';
import 'app_icon_button.dart';

class FadeAnimationExample extends StatelessWidget {
  const FadeAnimationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SimpleIconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icons.arrow_back,
            ),
          ),
          title: Text(
            'Fade Animation',
            style: Theme.of(context).textTheme.headlineSmall,
          )),
      body: FadeAnimationWrapper(
        child: Center(child: Image.asset(AppIcons.google, width: 300)),
      ),
    );
  }
}

class FadeAnimationWrapper extends StatefulWidget {
  const FadeAnimationWrapper({
    Key? key,
    this.duration = const Duration(milliseconds: 2000),
    this.delay = const Duration(milliseconds: 500),
    this.curve = const Interval(0, 1, curve: Curves.easeOut),
    this.begin = 0.0,
    this.end = 1.0,
    required this.child,
  }) : super(key: key);

  final Duration delay;
  final Duration duration;
  final Curve curve;
  final double begin;
  final double end;
  final Widget child;

  @override
  State<FadeAnimationWrapper> createState() => _FadeAnimationWrapperState();
}

class _FadeAnimationWrapperState extends State<FadeAnimationWrapper>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<double> fadeAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    Future.delayed(
      widget.delay,
      () {
        if (!mounted) return;
        animationController.forward();
      },
    );

    fadeAnimation = Tween<double>(
      begin: widget.begin,
      end: widget.end,
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: widget.curve,
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) => FadeTransition(
        opacity: fadeAnimation,
        child: child,
      ),
      child: widget.child,
    );
  }
}
