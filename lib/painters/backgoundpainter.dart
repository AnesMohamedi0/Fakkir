import 'package:flutter/material.dart';

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(70, 1, 255, 255),
              Color.fromARGB(44, 30, 255, 255),
            ],
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_0 = Path();
    path_0.moveTo(size.width * 1.1224500, size.height * 0.2078875);
    path_0.quadraticBezierTo(
      size.width * 1.0062750,
      size.height * 0.2282688,
      size.width * 0.9474500,
      size.height * 0.2166375,
    );
    path_0.cubicTo(
      size.width * 0.8783375,
      size.height * 0.2041375,
      size.width * 0.8498250,
      size.height * 0.1799750,
      size.width * 0.7949500,
      size.height * 0.1666375,
    );
    path_0.cubicTo(
      size.width * 0.7315750,
      size.height * 0.1515750,
      size.width * 0.6293125,
      size.height * 0.1408187,
      size.width * 0.5657375,
      size.height * 0.1474250,
    );
    path_0.cubicTo(
      size.width * 0.5008500,
      size.height * 0.1556750,
      size.width * 0.4252875,
      size.height * 0.1765687,
      size.width * 0.3539125,
      size.height * 0.1875375,
    );
    path_0.cubicTo(
      size.width * 0.3027750,
      size.height * 0.1961563,
      size.width * 0.1797625,
      size.height * 0.1941375,
      size.width * 0.1217125,
      size.height * 0.1885187,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0338250,
      size.height * 0.1773500,
      size.width * -0.1142250,
      size.height * 0.1786000,
    );
    path_0.lineTo(size.width * -0.2022375, size.height * -0.0885937);
    path_0.lineTo(size.width * 1.0198875, size.height * -0.0861313);
    path_0.lineTo(size.width * 1.1749500, size.height * 0.1516375);
    path_0.lineTo(size.width * 1.1224500, size.height * 0.2078875);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    //2nd layer

    Paint paint_fill_1 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(59, 0, 255, 255),
              Color.fromARGB(34, 36, 255, 255),
            ],
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_1 = Path();
    path_1.moveTo(size.width * -0.1562500, size.height * 0.3050000);
    path_1.lineTo(size.width * -0.2037500, size.height * 0.2093750);
    path_1.lineTo(size.width * -0.2337500, size.height * 0.0925000);
    path_1.lineTo(size.width * 0.2962500, size.height * -0.1487500);
    path_1.lineTo(size.width * 1.2462500, size.height * -0.1450000);
    path_1.lineTo(size.width * 1.5387500, size.height * 0.1025000);
    path_1.lineTo(size.width * 1.1387500, size.height * 0.3400000);
    path_1.quadraticBezierTo(
      size.width * 0.9762500,
      size.height * 0.3223437,
      size.width * 0.8987500,
      size.height * 0.2800000,
    );
    path_1.cubicTo(
      size.width * 0.8193750,
      size.height * 0.2351563,
      size.width * 0.7140625,
      size.height * 0.2423437,
      size.width * 0.6550000,
      size.height * 0.2487500,
    );
    path_1.cubicTo(
      size.width * 0.6021875,
      size.height * 0.2567187,
      size.width * 0.4353125,
      size.height * 0.2645312,
      size.width * 0.3525000,
      size.height * 0.2581250,
    );
    path_1.cubicTo(
      size.width * 0.3012500,
      size.height * 0.2556250,
      size.width * 0.1965625,
      size.height * 0.2225000,
      size.width * 0.0825000,
      size.height * 0.2481250,
    );
    path_1.quadraticBezierTo(
      size.width * 0.0171875,
      size.height * 0.2607813,
      size.width * -0.0187500,
      size.height * 0.3112500,
    );
    path_1.lineTo(size.width * -0.1562500, size.height * 0.3050000);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);

    //3rd layer

    Paint paint_fill_2 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(100, 255, 215, 0),
              Color.fromARGB(55, 255, 215, 0),
            ],
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_2 = Path();
    path_2.moveTo(size.width * 1.1843750, size.height * 0.9458125);
    path_2.quadraticBezierTo(
      size.width * 0.9646125,
      size.height * 0.9402375,
      size.width * 0.9086125,
      size.height * 0.9314438,
    );
    path_2.cubicTo(
      size.width * 0.8527375,
      size.height * 0.9195250,
      size.width * 0.7729375,
      size.height * 0.8962812,
      size.width * 0.7345125,
      size.height * 0.8697813,
    );
    path_2.cubicTo(
      size.width * 0.6707000,
      size.height * 0.8295687,
      size.width * 0.5565625,
      size.height * 0.8148875,
      size.width * 0.3382125,
      size.height * 0.8774187,
    );
    path_2.cubicTo(
      size.width * 0.2190000,
      size.height * 0.9128000,
      size.width * 0.0947125,
      size.height * 0.9018438,
      size.width * 0.0174125,
      size.height * 0.8887875,
    );
    path_2.quadraticBezierTo(
      size.width * -0.0396000,
      size.height * 0.8776188,
      size.width * -0.1540875,
      size.height * 0.8654688,
    );
    path_2.lineTo(size.width * -0.2358750, size.height * 0.9767625);
    path_2.lineTo(size.width * -0.1758750, size.height * 1.0351375);
    path_2.lineTo(size.width * 0.2466250, size.height * 1.0911563);
    path_2.lineTo(size.width * 0.9941250, size.height * 1.0821500);
    path_2.lineTo(size.width * 1.1653750, size.height * 1.0061500);
    path_2.lineTo(size.width * 1.1843750, size.height * 0.9458125);
    path_2.close();

    canvas.drawPath(path_2, paint_fill_2);

    // 4th layer
    Paint paint_fill_3 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(80, 255, 215, 0),
              Color.fromARGB(50, 255, 215, 0),
            ],
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_3 = Path();
    path_3.moveTo(size.width * -0.1628875, size.height * 0.8389000);
    path_3.quadraticBezierTo(
      size.width * -0.0473000,
      size.height * 0.8125000,
      size.width * 0.0028625,
      size.height * 0.7769000,
    );
    path_3.cubicTo(
      size.width * 0.0539250,
      size.height * 0.7353437,
      size.width * 0.1220000,
      size.height * 0.7118937,
      size.width * 0.2457500,
      size.height * 0.7742313,
    );
    path_3.cubicTo(
      size.width * 0.3439375,
      size.height * 0.8079250,
      size.width * 0.3876500,
      size.height * 0.7986938,
      size.width * 0.4362750,
      size.height * 0.7865625,
    );
    path_3.cubicTo(
      size.width * 0.5139250,
      size.height * 0.7686250,
      size.width * 0.5894625,
      size.height * 0.7531750,
      size.width * 0.6778625,
      size.height * 0.7827375,
    );
    path_3.cubicTo(
      size.width * 0.7422375,
      size.height * 0.8047125,
      size.width * 0.7544875,
      size.height * 0.8235562,
      size.width * 0.8283625,
      size.height * 0.8313813,
    );
    path_3.quadraticBezierTo(
      size.width * 0.9031125,
      size.height * 0.8366187,
      size.width * 1.0073625,
      size.height * 0.8229812,
    );
    path_3.lineTo(size.width * 1.0883625, size.height * 0.8268688);
    path_3.lineTo(size.width * 1.2408625, size.height * 0.9896125);
    path_3.lineTo(size.width * 0.7621125, size.height * 1.0740812);
    path_3.lineTo(size.width * -0.3066375, size.height * 0.9838625);
    path_3.lineTo(size.width * -0.1628875, size.height * 0.8389000);
    path_3.close();

    canvas.drawPath(path_3, paint_fill_3);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
