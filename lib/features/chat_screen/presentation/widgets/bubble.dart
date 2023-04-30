//

import 'package:chatty/configuration/theme/colors.dart';
import 'package:chatty/core/extensions/build_context_extension.dart';
import 'package:chatty/core/extensions/path_extension.dart';
import 'package:flutter/material.dart';

class Bubble extends StatelessWidget {
  const Bubble({
    super.key,
    required this.child,
    required this.toMe,
  });
  final Widget child;
  final bool toMe;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BubblePainter(toMe: toMe),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: context.medaiQuery.size.width * 0.6,
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Row(
          children: [
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}

class BubblePainter extends CustomPainter {
  final bool toMe;

  BubblePainter({required this.toMe});
  @override
  void paint(Canvas canvas, Size size) {
    final path = toMe ? rightPath(size) : leftPath(size);

    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  Paint get painter {
    if (toMe) {
      return Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 0.5
        ..color = Colors.black;
    } else {
      return Paint()
        ..style = PaintingStyle.fill
        ..color = AppColors.primary40;
    }
  }

  Path rightPath(Size size) {
    final path = Path();
    final width = size.width;
    final height = size.height;

    path.moveTo(0.0516 * width, 0);

    path.addCurve(
        to: Offset(0.00207 * width, 0.17391 * height),
        control1: Offset(0.02425 * width, 0),
        control2: Offset(0.00207 * width, 0.07786 * height));

    path.addLine(to: Offset(0.00207 * width, 0.82609 * height));
    path.addCurve(
        to: Offset(0.0516 * width, 1.0 * height),
        control1: Offset(0.00207 * width, 0.92214 * height),
        control2: Offset(0.02425 * width, 1.0 * height));
    path.addLine(to: Offset(0.97907 * width, 1.0 * height));
    path.addLine(to: Offset(0.99824 * width, 1.0 * height));
    path.addCurve(
        to: Offset(1.0 * width, 0.99383 * height),
        control1: Offset(0.99921 * width, 1.0 * height),
        control2: Offset(1.0 * width, 0.99724 * height));
    path.addCurve(
        to: Offset(0.99912 * width, 0.9884 * height),
        control1: Offset(1.0 * width, 0.99161 * height),
        control2: Offset(0.99966 * width, 0.98958 * height));
    path.addCurve(
        to: Offset(0.97907 * width, 0.81928 * height),
        control1: Offset(0.9874 * width, 0.96261 * height),
        control2: Offset(0.97907 * width, 0.89662 * height));
    path.addLine(to: Offset(0.97907 * width, 0.17391 * height));
    path.addCurve(
        to: Offset(0.92953 * width, 0),
        control1: Offset(0.97907 * width, 0.07786 * height),
        control2: Offset(0.95689 * width, 0));
    path.addLine(to: Offset(0.0516 * width, 0));
    path.close();
    return path;
  }

  Path leftPath(Size size) {
    var path = Path();
    final width = size.width;
    final height = size.height;
    path.moveTo(0.95 * width, 0);
    path.addCurve(
      to: Offset(1.0 * width, 0.26667 * height),
      control1: Offset(0.97762 * width, 0),
      control2: Offset(1.0 * width, 0.11939 * height),
    );
    path.addLine(to: Offset(1.0 * width, 0.73333 * height));
    path.addCurve(
      to: Offset(0.95 * width, 1.0 * height),
      control1: Offset(1.0 * width, 0.88061 * height),
      control2: Offset(0.97762 * width, 1.0 * height),
    );
    path.addLine(to: Offset(0.02813 * width, 1.0 * height));
    path.addLine(to: Offset(0.0015 * width, 1.0 * height));
    path.addCurve(
      to: Offset(0, 0.99199 * height),
      control1: Offset(0.00067 * width, 1.0 * height),
      control2: Offset(0, 0.99642 * height),
    );
    path.addCurve(
      to: Offset(0.00096 * width, 0.98445 * height),
      control1: Offset(0, 0.98868 * height),
      control2: Offset(0.00038 * width, 0.98573 * height),
    );
    path.addCurve(
      to: Offset(0.02813 * width, 0.75 * height),
      control1: Offset(0.01682 * width, 0.94912 * height),
      control2: Offset(0.02813 * width, 0.85748 * height),
    );
    path.addLine(to: Offset(0.02813 * width, 0.26667 * height));
    path.addCurve(
      to: Offset(0.07813 * width, 0),
      control1: Offset(0.02813 * width, 0.11939 * height),
      control2: Offset(0.05051 * width, 0),
    );
    path.addLine(to: Offset(0.95 * width, 0));
    path.close();
    return path;
  }
}
