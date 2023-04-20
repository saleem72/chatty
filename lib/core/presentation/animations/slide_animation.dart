//

import 'package:flutter/material.dart';

class SlideAnimationWrapper extends StatefulWidget {
  const SlideAnimationWrapper({
    Key? key,
    this.delay = const Duration(milliseconds: 500),
    this.duration = const Duration(milliseconds: 1000),
    this.offset = const Offset(10.0, 0.0),
    this.curve = const Interval(0, 1, curve: Curves.easeIn),
    required this.child,
  }) : super(key: key);

  final Duration delay;
  final Duration duration;
  final Offset offset;
  final Curve curve;
  final Widget child;

  @override
  State<SlideAnimationWrapper> createState() => _SlideAnimationWrapperState();
}

class _SlideAnimationWrapperState extends State<SlideAnimationWrapper>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<Offset> slideAnimation;

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
    slideAnimation = Tween<Offset>(
      begin: widget.offset,
      end: Offset.zero,
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
      builder: (context, child) {
        return SlideTransition(
          position: slideAnimation,
          child: child,
        );
      },
      child: widget.child,
    );
  }
}
