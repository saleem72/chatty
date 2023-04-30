//

import 'package:flutter/material.dart';

extension IOSPath on Path {
  addCurve({
    required Offset to,
    required Offset control1,
    required Offset control2,
  }) {
    cubicTo(control1.dx, control1.dy, control2.dx, control2.dy, to.dx, to.dy);
  }

  addLine({required Offset to}) {
    lineTo(to.dx, to.dy);
  }
}
