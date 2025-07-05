import 'package:flutter/material.dart';
import 'package:general_knowledge_app/views/shared/colors.dart';

class PlayMapHeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Add your custom painting code here
    Paint paint_fill_0 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: colorsMain,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0696000, size.height * 0.1239719);
    path_0.lineTo(size.width * -0.0360000, size.height * 0.4570935);
    path_0.lineTo(size.width * -0.0520000, size.height * 0.5804638);
    path_0.lineTo(size.width * -0.0416000, size.height * 0.7408598);
    path_0.quadraticBezierTo(
      size.width * -0.0004000,
      size.height * 0.8066670,
      size.width * 0.0880000,
      size.height * 0.8066670,
    );
    path_0.cubicTo(
      size.width * 0.2974000,
      size.height * 0.8477783,
      size.width * 0.6610000,
      size.height * 0.8477783,
      size.width * 0.8968000,
      size.height * 0.8066670,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9700000,
      size.height * 0.8005021,
      size.width * 1.0392000,
      size.height * 0.7491039,
    );
    path_0.lineTo(size.width * 1.0568000, size.height * 0.4653012);
    path_0.lineTo(size.width * 1.0720000, size.height * 0.1321796);
    path_0.quadraticBezierTo(
      size.width * 0.9178000,
      size.height * 0.0797600,
      size.width * 0.7776000,
      size.height * 0.1692052,
    );
    path_0.cubicTo(
      size.width * 0.6635200,
      size.height * 0.2294677,
      size.width * 0.3281200,
      size.height * 0.2842219,
      size.width * 0.1832000,
      size.height * 0.1692052,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0646000,
      size.height * 0.0951904,
      size.width * -0.0696000,
      size.height * 0.1239719,
    );
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    canvas.save();
    canvas.clipPath(path_0);

    _drawDuneLayer1_1(canvas, size);
    _drawDuneLayer1_2(canvas, size);
    _drawDuneLayer1_3(canvas, size);
    _drawDuneLayer1_4(canvas, size);

    canvas.restore();

    final borderPaint =
        Paint()
          ..color = const Color.fromARGB(255, 139, 69, 19) // Border color
          ..style = PaintingStyle.stroke
          ..strokeWidth = 3.0;
    canvas.drawPath(path_0, borderPaint);
  }

  void _drawDuneLayer1_1(Canvas canvas, Size size) {
    final paint_fill_0 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color1_2,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.1136000, size.height * -0.1560000);
    path_1.quadraticBezierTo(
      size.width * 0.0764160,
      size.height * -0.0429200,
      size.width * 0.0391920,
      size.height * 0.0533200,
    );
    path_1.quadraticBezierTo(
      size.width * 0.0274240,
      size.height * 0.1688400,
      size.width * 0.0368000,
      size.height * 0.2440000,
    );
    path_1.quadraticBezierTo(
      size.width * 0.0504160,
      size.height * 0.3745600,
      size.width * 0.0804960,
      size.height * 0.4252000,
    );
    path_1.cubicTo(
      size.width * 0.1903600,
      size.height * 0.5356400,
      size.width * 0.2725520,
      size.height * 0.4600000,
      size.width * 0.3677840,
      size.height * 0.4786800,
    );
    path_1.cubicTo(
      size.width * 0.4275520,
      size.height * 0.4810000,
      size.width * 0.5281920,
      size.height * 0.4644000,
      size.width * 0.5930160,
      size.height * 0.5092800,
    );
    path_1.cubicTo(
      size.width * 0.6541920,
      size.height * 0.5265600,
      size.width * 0.7353200,
      size.height * 0.5398400,
      size.width * 0.7898480,
      size.height * 0.4720000,
    );
    path_1.cubicTo(
      size.width * 0.8083860,
      size.height * 0.4590000,
      size.width * 0.9253040,
      size.height * 0.4550400,
      size.width * 0.9562640,
      size.height * 0.3039600,
    );
    path_1.quadraticBezierTo(
      size.width * 0.9861760,
      size.height * 0.1171600,
      size.width * 0.8971520,
      size.height * -0.0920000,
    );
    path_1.lineTo(size.width * 0.9552000, size.height * -0.4720000);
    path_1.lineTo(size.width * 1.1056000, size.height * -0.4960000);
    path_1.lineTo(size.width * 1.1784000, size.height * 0.9200000);
    path_1.lineTo(size.width * 0.8808000, size.height * 2.7600000);
    path_1.lineTo(size.width * 0.3600000, size.height * 2.7920000);
    path_1.lineTo(size.width * -0.2168000, size.height * 1.9560000);
    path_1.lineTo(size.width * -0.3056000, size.height * 0.0640000);
    path_1.lineTo(size.width * -0.1200000, size.height * -1.5120000);
    path_1.lineTo(size.width * 0.1352000, size.height * -0.9280000);
    path_1.lineTo(size.width * 0.1184000, size.height * -0.1720000);

    canvas.drawPath(path_1, paint_fill_0);
  }

  void _drawDuneLayer1_2(Canvas canvas, Size size) {
    final paint_fill_0 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color1_3,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0261440, size.height * 0.1416400);
    path_0.cubicTo(
      size.width * 0.0086680,
      size.height * 0.4153900,
      size.width * -0.0041040,
      size.height * 0.4154000,
      size.width * 0.0202720,
      size.height * 0.5066400,
    );
    path_0.cubicTo(
      size.width * 0.0825760,
      size.height * 0.5971600,
      size.width * 0.1656720,
      size.height * 0.6717200,
      size.width * 0.2269120,
      size.height * 0.6664800,
    );
    path_0.cubicTo(
      size.width * 0.3687920,
      size.height * 0.6505600,
      size.width * 0.5413600,
      size.height * 0.6240400,
      size.width * 0.6656880,
      size.height * 0.6719600,
    );
    path_0.cubicTo(
      size.width * 0.7170800,
      size.height * 0.6692000,
      size.width * 0.8717280,
      size.height * 0.5892000,
      size.width * 0.9382880,
      size.height * 0.5651600,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9846400,
      size.height * 0.5729600,
      size.width * 1.0630320,
      size.height * -0.1431200,
    );
    path_0.lineTo(size.width * 1.1272000, size.height * -0.4880000);
    path_0.lineTo(size.width * 1.1312000, size.height * 1.2160000);
    path_0.lineTo(size.width * 0.4752000, size.height * 2.5800000);
    path_0.lineTo(size.width * -0.1600000, size.height * 1.7440000);
    path_0.lineTo(size.width * -0.1968000, size.height * -0.1880000);
    path_0.lineTo(size.width * -0.1296000, size.height * -0.9920000);
    path_0.lineTo(size.width * -0.0384000, size.height * -1.0680000);
    path_0.quadraticBezierTo(
      size.width * -0.0353360,
      size.height * -0.7655900,
      size.width * -0.0261440,
      size.height * 0.1416400,
    );
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);
  }

  void _drawDuneLayer1_3(Canvas canvas, Size size) {
    final paint_fill_0 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color2_6,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_1 = Path();
    path_1.moveTo(size.width * -0.0956000, size.height * -0.3974400);
    path_1.quadraticBezierTo(
      size.width * -0.0385840,
      size.height * -0.0469600,
      size.width * -0.0394400,
      size.height * 0.3536400,
    );
    path_1.cubicTo(
      size.width * -0.0295120,
      size.height * 0.5931600,
      size.width * -0.0173840,
      size.height * 0.6026800,
      size.width * 0.0013200,
      size.height * 0.6786000,
    );
    path_1.quadraticBezierTo(
      size.width * 0.0980000,
      size.height * 0.7689200,
      size.width * 0.3155280,
      size.height * 0.7753600,
    );
    path_1.quadraticBezierTo(
      size.width * 0.6093280,
      size.height * 0.7884000,
      size.width * 0.7156720,
      size.height * 0.7753200,
    );
    path_1.cubicTo(
      size.width * 0.7943600,
      size.height * 0.7674400,
      size.width * 0.9307040,
      size.height * 0.7657600,
      size.width * 1.0152400,
      size.height * 0.6536000,
    );
    path_1.quadraticBezierTo(
      size.width * 1.0660160,
      size.height * 0.4344000,
      size.width * 1.0688000,
      size.height * -0.1160000,
    );
    path_1.lineTo(size.width * 1.0776000, size.height * 0.8400000);
    path_1.lineTo(size.width * 0.6848000, size.height * 1.5480000);
    path_1.lineTo(size.width * 0.0736000, size.height * 1.6160000);
    path_1.lineTo(size.width * -0.1288000, size.height * 1.1000000);
    path_1.lineTo(size.width * -0.1120000, size.height * -0.0560000);
    path_1.lineTo(size.width * -0.0736000, size.height * -0.5840000);
    path_1.lineTo(size.width * -0.0956000, size.height * -0.3974400);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_0);
  }

  void _drawDuneLayer1_4(Canvas canvas, Size size) {
    final paint_fill_0 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color2_3,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5245280, size.height * 0.3235600);
    path_0.lineTo(size.width * 0.4237280, size.height * 0.3355600);
    path_0.lineTo(size.width * 0.4205280, size.height * 0.3915600);
    path_0.lineTo(size.width * 0.5469280, size.height * 0.3915600);
    path_0.lineTo(size.width * 0.6733280, size.height * 0.4155600);
    path_0.lineTo(size.width * 0.7245280, size.height * 0.4675600);
    path_0.lineTo(size.width * 0.7613280, size.height * 0.3875600);
    path_0.lineTo(size.width * 0.7229280, size.height * 0.3755600);
    path_0.lineTo(size.width * 0.6717280, size.height * 0.3435600);
    path_0.lineTo(size.width * 0.5629280, size.height * 0.3195600);
    path_0.lineTo(size.width * 0.5245280, size.height * 0.3235600);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
