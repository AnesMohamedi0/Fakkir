import 'package:flutter/material.dart';
import 'package:general_knowledge_app/views/shared/colors.dart';

class IntervalPainter extends CustomPainter {
  final double start;
  final double end;
  double? selected;
  final Color color;
  final int? hint;
  final int? hintMargin;

  IntervalPainter({
    required this.start,
    required this.end,
    this.selected = 0,
    required this.color,
    this.hint,
    this.hintMargin,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = colorTextDark;
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);

    canvas.saveLayer(rect, paint);
    canvas.clipRect(rect);
    if (hint != null && hintMargin != null) {
      final hintpaint = Paint()..color = colormain[100]!;

      final double leftFraction =
          ((hint! - hintMargin!) - start) / (end - start);
      final double rightFraction =
          ((hint! + hintMargin!) - start) / (end - start);

      final double left = size.width * leftFraction;
      final double right = size.width * rightFraction;

      final hintrect = Rect.fromLTWH(left, 0, right - left, size.height);
      canvas.drawRect(hintrect, hintpaint);
    }
    final paint2 = Paint()..color = color;
    final double fraction = ((selected ?? start) - start) / (end - start);
    final double selectedWidth = size.width * fraction;
    final rect2 = Rect.fromLTWH(selectedWidth, 0, size.width, size.height);
    canvas.drawRect(rect2, paint2);

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant IntervalPainter oldDelegate) {
    return selected != oldDelegate.selected ||
        hint != oldDelegate.hint ||
        hintMargin != oldDelegate.hintMargin;
  }
}
