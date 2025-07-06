import 'package:flutter/material.dart';
import 'package:general_knowledge_app/views/shared/colors.dart';

class ScrollCase extends CustomPainter {
  final bool right;
  ScrollCase({this.right = false});
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 =
        Paint()
          ..color = colormain[300]!
          ..style = PaintingStyle.fill
          ..strokeWidth = size.width * 0.01
          ..strokeCap = StrokeCap.butt
          ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1480000, size.height * 0.0166923);
    path_0.quadraticBezierTo(
      size.width * 0.0967000,
      size.height * 0.3419385,
      size.width * 0.1064000,
      size.height * 0.4847077,
    );
    path_0.quadraticBezierTo(
      size.width * 0.1052000,
      size.height * 0.6276154,
      size.width * 0.1651000,
      size.height * 0.9630769,
    );
    path_0.quadraticBezierTo(
      size.width * 0.3598000,
      size.height * 0.9684154,
      size.width * 0.4907000,
      size.height * 0.9690154,
    );
    path_0.quadraticBezierTo(
      size.width * 0.6272000,
      size.height * 0.9686308,
      size.width * 0.8223000,
      size.height * 0.9633846,
    );
    path_0.quadraticBezierTo(
      size.width * 0.8718000,
      size.height * 0.6243692,
      size.width * 0.8741000,
      size.height * 0.4835385,
    );
    path_0.quadraticBezierTo(
      size.width * 0.8708000,
      size.height * 0.3451231,
      size.width * 0.8233000,
      size.height * 0.0195538,
    );
    path_0.quadraticBezierTo(
      size.width * 0.6294000,
      size.height * 0.0045692,
      size.width * 0.4865000,
      size.height * 0.0043692,
    );
    path_0.quadraticBezierTo(
      size.width * 0.3282000,
      size.height * 0.0048923,
      size.width * 0.1480000,
      size.height * 0.0166923,
    );
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    canvas.save();
    canvas.clipPath(path_0);
    _layer1_1(canvas, size);
    canvas.restore();

    final borderPaint =
        Paint()
          ..color = const Color.fromARGB(255, 139, 69, 19) // Border color
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2.5;
    canvas.drawPath(path_0, borderPaint);
  }

  _layer1_1(Canvas canvas, Size size) {
    Paint paint_fill_1 =
        Paint()
          ..color = colormain[400]!
          ..style = PaintingStyle.fill
          ..strokeWidth = size.width * 0.01
          ..strokeCap = StrokeCap.butt
          ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();

    if (right) {
      path_1.moveTo(size.width * 0.3700000, size.height * 0.9938462);
      path_1.lineTo(size.width * 0.4600000, size.height * 0.9492308);
      path_1.lineTo(size.width * 0.5500000, size.height * 0.8953846);
      path_1.lineTo(size.width * 0.4600000, size.height * 0.8430769);
      path_1.lineTo(size.width * 0.4600000, size.height * 0.7723077);
      path_1.lineTo(size.width * 0.5700000, size.height * 0.7230769);
      path_1.lineTo(size.width * 0.4700000, size.height * 0.5753846);
      path_1.lineTo(size.width * 0.4600000, size.height * 0.5015385);
      path_1.lineTo(size.width * 0.5300000, size.height * 0.4246154);
      path_1.lineTo(size.width * 0.5300000, size.height * 0.3430769);
      path_1.lineTo(size.width * 0.4600000, size.height * 0.2753846);
      path_1.lineTo(size.width * 0.4200000, size.height * 0.2323077);
      path_1.lineTo(size.width * 0.5400000, size.height * 0.1692308);
      path_1.lineTo(size.width * 0.6300000, size.height * 0.1261538);
      path_1.lineTo(size.width * 0.4700000, size.height * 0.0523077);
      path_1.lineTo(size.width * 0.4100000, size.height * 0.0092308);
      path_1.lineTo(size.width * 0.4600000, size.height * -0.0338462);
      path_1.lineTo(size.width * 1.1300000, size.height * -0.0953846);
      path_1.lineTo(size.width * 1.9700000, size.height * 0.3661538);
      path_1.lineTo(size.width * 1.8900000, size.height * 0.8861538);
      path_1.lineTo(size.width * 1.3400000, size.height * 0.9876923);
      path_1.lineTo(size.width * 0.4100000, size.height * 1.0092308);
      path_1.lineTo(size.width * 0.3700000, size.height * 0.9938462);
      path_1.close();
    } else {
      Path path_1 = Path();
      path_1.moveTo(size.width * 0.6614000, size.height * -0.0094462);
      path_1.lineTo(size.width * 0.4100000, size.height * 0.0369231);
      path_1.lineTo(size.width * 0.4600000, size.height * 0.0569231);
      path_1.lineTo(size.width * 0.4400000, size.height * 0.1092308);
      path_1.lineTo(size.width * 0.3300000, size.height * 0.1353846);
      path_1.lineTo(size.width * 0.3700000, size.height * 0.2600000);
      path_1.lineTo(size.width * 0.5300000, size.height * 0.3061538);
      path_1.lineTo(size.width * 0.5300000, size.height * 0.3676923);
      path_1.lineTo(size.width * 0.3700000, size.height * 0.5384615);
      path_1.lineTo(size.width * 0.3600000, size.height * 0.5876923);
      path_1.lineTo(size.width * 0.4300000, size.height * 0.6769231);
      path_1.lineTo(size.width * 0.4400000, size.height * 0.7138462);
      path_1.lineTo(size.width * 0.3500000, size.height * 0.7630769);
      path_1.lineTo(size.width * 0.4600000, size.height * 0.8015385);
      path_1.lineTo(size.width * 0.4600000, size.height * 0.8400000);
      path_1.lineTo(size.width * 0.3900000, size.height * 0.8430769);
      path_1.lineTo(size.width * 0.3400000, size.height * 0.8784615);
      path_1.lineTo(size.width * 0.3500000, size.height * 0.9276923);
      path_1.lineTo(size.width * 0.4520000, size.height * 0.9661538);
      path_1.lineTo(size.width * 0.3500000, size.height * 1.0153846);
      path_1.lineTo(size.width * -0.2900000, size.height * 0.9923077);
      path_1.lineTo(size.width * -1.0500000, size.height * 0.6476923);
      path_1.lineTo(size.width * -1.0100000, size.height * 0.2430769);
      path_1.lineTo(size.width * -0.5300000, size.height * 0.0600000);
      path_1.lineTo(size.width * -0.2800000, size.height * -0.0430769);
      path_1.lineTo(size.width * 0.6614000, size.height * -0.0094462);
      path_1.close();
    }

    canvas.drawPath(path_1, paint_fill_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
