import 'package:flutter/material.dart';
import 'package:general_knowledge_app/painters/colors.dart';

class TreasureMapBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    path.moveTo(0, size.height * 0.07);

    path.cubicTo(
      size.width * 0.1,
      size.height * 0.04, // control 1
      size.width * 0.35,
      size.height * 0.04, // control 2
      size.width * 0.8,
      size.height * 0.06, // end
    );

    path.lineTo(size.width * 0.8, size.height * 0.1);
    path.lineTo(size.width * 0.76, size.height * 0.167);
    path.cubicTo(
      size.width * 0.81,
      size.height * 0.14,
      size.width * 0.83,
      size.height * 0.08,
      size.width * 0.88,
      size.height * 0.08,
    );

    path.quadraticBezierTo(
      size.width * 0.92,
      size.height * 0.07,
      size.width * 0.94,
      size.height * 0.06,
    );

    path.quadraticBezierTo(
      size.width * 0.98,
      size.height * 0.06,
      size.width,
      size.height * 0.055,
    );

    path.lineTo(size.width, size.height * 0.1);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);

    // Main background gradient (top darker, bottom lighter)
    final bgGradient =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            colors: colorsMain,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    canvas.drawPath(path, bgGradient);

    canvas.save();
    canvas.clipPath(path);

    _drawDuneLayer1(canvas, size);
    _drawDuneLayer2(canvas, size);
    _drawDuneLayer3(canvas, size);
    _drawDuneLayer4(canvas, size);

    canvas.restore();
  }

  void _drawDuneLayer1(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width * 0.1, size.height);

    path.cubicTo(
      size.width * 0.07,
      size.height * 1.05,
      size.width * 0.25,
      size.height * 0.9,
      size.width * 0.1,
      size.height * 0.75,
    );

    path.cubicTo(
      size.width * -0.1,
      size.height * 0.55,
      size.width * 0.05,
      size.height * 0.44,
      size.width * 0.06,
      size.height * 0.34,
    );

    path.cubicTo(
      size.width * 0.1,
      size.height * 0.25,
      size.width * 0.15,
      size.height * 0.27,
      size.width * 0.3,
      size.height * 0.23,
    );

    path.cubicTo(
      size.width * 0.5,
      size.height * 0.18,
      size.width * 0.62,
      size.height * 0.31,
      size.width * 0.78,
      size.height * 0.29,
    );

    path.cubicTo(
      size.width * 1.12,
      size.height * 0.27,
      size.width * 0.7,
      size.height * 0.55,
      size.width * 0.9,
      size.height * 0.75,
    );

    path.cubicTo(
      size.width,
      size.height * 0.95,
      size.width * 0.8,
      size.height * 1.05,
      size.width * 0.8,
      size.height,
    );

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    path.close();

    // Layer 1 gradient (top darker, bottom lighter)
    final layer1Gradient =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color1_1,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    canvas.drawPath(path, layer1Gradient);
  }

  void _drawDuneLayer2(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(0, size.height);

    path.cubicTo(
      size.width * 0.1,
      size.height * 0.9,
      0,
      size.height * 0.8,
      0,
      size.height * 0.7,
    );

    path.lineTo(0, size.height * 0.24);

    path.cubicTo(
      size.width * 0.1,
      size.height * 0.22,
      size.width * 0.4,
      size.height * 0.14,
      size.width * 0.6,
      size.height * 0.16,
    );

    path.cubicTo(
      size.width * 0.79,
      size.height * 0.17,
      size.width * 0.6,
      size.height * 0.35,
      size.width * 1,
      size.height * 0.2,
    );

    path.cubicTo(
      size.width * 1.3,
      size.height * 0.12,
      size.width * 0.8,
      size.height * 0.46,
      size.width,
      size.height * 0.7,
    );

    path.lineTo(size.width, 0.5 * size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    path.close();

    // Layer 2 gradient (top darker, bottom lighter)
    final layer2Gradient =
        Paint()
          ..shader = RadialGradient(
            radius: 1.7,
            colors: color1_2,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    canvas.drawPath(path, layer2Gradient);
  }

  void _drawDuneLayer3(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(0, size.height * 0.16);

    path.cubicTo(
      size.width * 0.3,
      size.height * 0.16,
      size.width * 0.5,
      size.height * 0.09,
      size.width * 0.8,
      size.height * 0.06,
    );

    path.lineTo(size.width * 0.73, size.height * 0.13);
    path.lineTo(size.width * 0.745, size.height * 0.2);
    path.lineTo(size.width * 0.83, size.height * 0.15);

    path.cubicTo(
      size.width * 0.85,
      size.height * 0.1,
      size.width * 0.92,
      size.height * 0.04,
      size.width * 0.94,
      size.height * 0.11,
    );

    path.cubicTo(
      size.width * 0.95,
      size.height * 0.065,
      size.width * 0.97,
      size.height * 0.06,
      size.width,
      size.height * 0.07,
    );

    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    path.close();

    // Layer 2 gradient (top darker, bottom lighter)
    final layer2Gradient =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            colors: color1_3,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    canvas.drawPath(path, layer2Gradient);
  }

  void _drawDuneLayer4(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(0, size.height * 0.13);

    path.quadraticBezierTo(
      size.width * 0.048,
      size.height * 0.15,
      size.width * 0.078,
      size.height * 0.155,
    );

    path.quadraticBezierTo(
      size.width * 0.1435,
      size.height * 0.13,
      size.width * 0.148,
      size.height * 0.11,
    );

    path.lineTo(size.width * 0.24, size.height * 0.12);

    path.cubicTo(
      size.width * 0.31,
      size.height * 0.09,
      size.width * 0.5,
      size.height * 0.07,
      size.width * 0.8,
      size.height * 0.06,
    );

    path.quadraticBezierTo(
      size.width * 0.9,
      size.height * 0.067,
      size.width,
      size.height * 0.062,
    );

    path.lineTo(size.width, 0);

    path.lineTo(0, 0);

    path.close();

    // Layer 2 gradient (top darker, bottom lighter)
    final layer2Gradient =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color1_1,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    canvas.drawPath(path, layer2Gradient);

    canvas.save();
    canvas.clipPath(path);

    _drawDuneLayerSub1(canvas, size);
    _drawDuneLayerSub2(canvas, size);
    _drawDuneLayerSub3(canvas, size);

    canvas.restore();
  }

  void _drawDuneLayerSub1(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(size.width * 0.078, size.height * 0.155);

    path.cubicTo(
      size.width * -0.08,
      size.height * 0.08,
      size.width * 0.1,
      size.height * 0.09,
      size.width * 0.8,
      size.height * 0.06,
    );

    path.lineTo(size.width * 0.04, size.height * 0.2);

    path.close();

    final layer2Gradient =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: colorsMain2,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    canvas.drawPath(path, layer2Gradient);
  }

  void _drawDuneLayerSub2(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(0, size.height * 0.1);

    path.cubicTo(
      size.width * 0.1,
      size.height * 0.07,
      size.width * 0.4,
      size.height * 0.04,
      size.width * 0.8,
      size.height * 0.06,
    );

    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    path.close();

    final layer2Gradient =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color2_2,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    canvas.drawPath(path, layer2Gradient);
  }

  void _drawDuneLayerSub3(Canvas canvas, Size size) {
    final path = Path();

    path.moveTo(0, size.height * 0.14);

    path.quadraticBezierTo(
      size.width * 0.028,
      size.height * 0.137,
      size.width * 0.078,
      size.height * 0.148,
    );

    path.quadraticBezierTo(
      size.width * 0.14,
      size.height * 0.12,
      size.width * 0.142,
      size.height * 0.104,
    );

    path.lineTo(size.width * 0.24, size.height * 0.11);

    path.cubicTo(
      size.width * 0.31,
      size.height * 0.08,
      size.width * 0.5,
      size.height * 0.06,
      size.width * 0.8,
      size.height * 0.06,
    );

    path.lineTo(size.width * 0.8, size.height * 0.4);

    path.close();

    final layer2Gradient =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 255, 242, 227), // Richer brown (top, darker)
              Color.fromARGB(
                255,
                255,
                242,
                226,
              ), // Deeper orange-brown (bottom, lighter)
            ],
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    canvas.drawPath(path, layer2Gradient);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
