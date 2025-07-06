import 'package:flutter/material.dart';
import 'package:general_knowledge_app/views/shared/colors.dart';

class QuizPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_fill_0 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: colorsMain,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0901625, size.height * 0.2193375);
    path_0.lineTo(size.width * -0.0150625, size.height * 0.1961375);
    path_0.quadraticBezierTo(
      size.width * 0.0278125,
      size.height * 0.1974375,
      size.width * 0.0562625,
      size.height * 0.1989250,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0799250,
      size.height * 0.2016250,
      size.width * 0.1047750,
      size.height * 0.1965375,
    );
    path_0.lineTo(size.width * 0.1083750, size.height * 0.2300750);
    path_0.lineTo(size.width * 0.1131625, size.height * 0.1953375);
    path_0.quadraticBezierTo(
      size.width * 0.1356250,
      size.height * 0.1971375,
      size.width * 0.1503000,
      size.height * 0.1977375,
    );
    path_0.quadraticBezierTo(
      size.width * 0.1757625,
      size.height * 0.1986250,
      size.width * 0.2042125,
      size.height * 0.1965375,
    );
    path_0.lineTo(size.width * 0.2108000, size.height * 0.2103125);
    path_0.lineTo(size.width * 0.2167875, size.height * 0.2037250);
    path_0.quadraticBezierTo(
      size.width * 0.2215750,
      size.height * 0.2022250,
      size.width * 0.2281625,
      size.height * 0.2091125,
    );
    path_0.quadraticBezierTo(
      size.width * 0.2341625,
      size.height * 0.2142000,
      size.width * 0.2437375,
      size.height * 0.2198875,
    );
    path_0.lineTo(size.width * 0.2389500, size.height * 0.2001250);
    path_0.lineTo(size.width * 0.2880625, size.height * 0.2001250);
    path_0.lineTo(size.width * 0.2928625, size.height * 0.2193000);
    path_0.lineTo(size.width * 0.2976500, size.height * 0.1977375);
    path_0.quadraticBezierTo(
      size.width * 0.3270000,
      size.height * 0.1962375,
      size.width * 0.3611375,
      size.height * 0.1971375,
    );
    path_0.quadraticBezierTo(
      size.width * 0.3922875,
      size.height * 0.2022250,
      size.width * 0.4120500,
      size.height * 0.2049250,
    );
    path_0.lineTo(size.width * 0.4144500, size.height * 0.1965375);
    path_0.quadraticBezierTo(
      size.width * 0.4270250,
      size.height * 0.1978875,
      size.width * 0.4384125,
      size.height * 0.1983250,
    );
    path_0.quadraticBezierTo(
      size.width * 0.4505500,
      size.height * 0.1963875,
      size.width * 0.4629625,
      size.height * 0.1953375,
    );
    path_0.quadraticBezierTo(
      size.width * 0.4824375,
      size.height * 0.1971375,
      size.width * 0.5025000,
      size.height * 0.1977375,
    );
    path_0.quadraticBezierTo(
      size.width * 0.5339500,
      size.height * 0.1977375,
      size.width * 0.5683875,
      size.height * 0.2001250,
    );
    path_0.quadraticBezierTo(
      size.width * 0.5689875,
      size.height * 0.1989250,
      size.width * 0.5713875,
      size.height * 0.2121125,
    );
    path_0.quadraticBezierTo(
      size.width * 0.5713875,
      size.height * 0.2231875,
      size.width * 0.5707875,
      size.height * 0.2276750,
    );
    path_0.lineTo(size.width * 0.5827625, size.height * 0.2001250);
    path_0.quadraticBezierTo(
      size.width * 0.5971375,
      size.height * 0.1983250,
      size.width * 0.6127125,
      size.height * 0.1965375,
    );
    path_0.cubicTo(
      size.width * 0.6270875,
      size.height * 0.1962375,
      size.width * 0.6483500,
      size.height * 0.1948875,
      size.width * 0.6666250,
      size.height * 0.1959375,
    );
    path_0.quadraticBezierTo(
      size.width * 0.6780000,
      size.height * 0.1966875,
      size.width * 0.6857875,
      size.height * 0.2013250,
    );
    path_0.lineTo(size.width * 0.6917750, size.height * 0.1953375);
    path_0.quadraticBezierTo(
      size.width * 0.7135000,
      size.height * 0.1944375,
      size.width * 0.7367000,
      size.height * 0.1965375,
    );
    path_0.quadraticBezierTo(
      size.width * 0.7632125,
      size.height * 0.2004250,
      size.width * 0.8055875,
      size.height * 0.1977375,
    );
    path_0.lineTo(size.width * 0.8079750, size.height * 0.2109125);
    path_0.lineTo(size.width * 0.8139750, size.height * 0.1953375);
    path_0.lineTo(size.width * 0.8606875, size.height * 0.1953375);
    path_0.lineTo(size.width * 0.8726750, size.height * 0.1995250);
    path_0.quadraticBezierTo(
      size.width * 0.9220875,
      size.height * 0.1928000,
      size.width * 0.9457500,
      size.height * 0.1941375,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9616125,
      size.height * 0.1957875,
      size.width * 0.9828875,
      size.height * 0.2001250,
    );
    path_0.lineTo(size.width * 1.0092375, size.height * 0.1953375);
    path_0.lineTo(size.width * 1.0738625, size.height * 0.7611875);
    path_0.quadraticBezierTo(
      size.width * 0.9830375,
      size.height * 0.7844375,
      size.width * 0.9697000,
      size.height * 0.7847375,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9565250,
      size.height * 0.7841375,
      size.width * 0.9433500,
      size.height * 0.7799375,
    );
    path_0.lineTo(size.width * 0.9439500, size.height * 0.7991125);
    path_0.quadraticBezierTo(
      size.width * 0.9249375,
      size.height * 0.8009000,
      size.width * 0.9110000,
      size.height * 0.8009000,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9002250,
      size.height * 0.8003000,
      size.width * 0.8858500,
      size.height * 0.7967125,
    );
    path_0.lineTo(size.width * 0.8822500, size.height * 0.7883250);
    path_0.lineTo(size.width * 0.8810500, size.height * 0.7979125);
    path_0.lineTo(size.width * 0.8253500, size.height * 0.8021000);
    path_0.quadraticBezierTo(
      size.width * 0.8241500,
      size.height * 0.8039000,
      size.width * 0.8175625,
      size.height * 0.7949125,
    );
    path_0.quadraticBezierTo(
      size.width * 0.8046875,
      size.height * 0.7895250,
      size.width * 0.8031875,
      size.height * 0.7919250,
    );
    path_0.lineTo(size.width * 0.7984000, size.height * 0.7523875);
    path_0.lineTo(size.width * 0.7924125, size.height * 0.7823375);
    path_0.lineTo(size.width * 0.7924125, size.height * 0.7967125);
    path_0.lineTo(size.width * 0.7852125, size.height * 0.8027000);
    path_0.quadraticBezierTo(
      size.width * 0.7704000,
      size.height * 0.7965625,
      size.width * 0.7582625,
      size.height * 0.7961125,
    );
    path_0.cubicTo(
      size.width * 0.7260750,
      size.height * 0.7992625,
      size.width * 0.7049500,
      size.height * 0.7968625,
      size.width * 0.6875875,
      size.height * 0.7979125,
    );
    path_0.quadraticBezierTo(
      size.width * 0.6730625,
      size.height * 0.7982125,
      size.width * 0.6546375,
      size.height * 0.7991125,
    );
    path_0.lineTo(size.width * 0.6546375, size.height * 0.7895250);
    path_0.lineTo(size.width * 0.6558375, size.height * 0.7763500);
    path_0.lineTo(size.width * 0.6474500, size.height * 0.7895250);
    path_0.lineTo(size.width * 0.6474500, size.height * 0.7967125);
    path_0.quadraticBezierTo(
      size.width * 0.6007375,
      size.height * 0.7961125,
      size.width * 0.5731750,
      size.height * 0.7979125,
    );
    path_0.quadraticBezierTo(
      size.width * 0.5408375,
      size.height * 0.7997000,
      size.width * 0.4989000,
      size.height * 0.7991125,
    );
    path_0.lineTo(size.width * 0.4917125, size.height * 0.7811375);
    path_0.lineTo(size.width * 0.4953125, size.height * 0.8021000);
    path_0.quadraticBezierTo(
      size.width * 0.4497875,
      size.height * 0.7989625,
      size.width * 0.4324250,
      size.height * 0.7985125,
    );
    path_0.quadraticBezierTo(
      size.width * 0.3064875,
      size.height * 0.7967125,
      size.width * 0.2964500,
      size.height * 0.7949125,
    );
    path_0.lineTo(size.width * 0.2796750, size.height * 0.7949125);
    path_0.quadraticBezierTo(
      size.width * 0.2699500,
      size.height * 0.7970125,
      size.width * 0.2683000,
      size.height * 0.8009000,
    );
    path_0.quadraticBezierTo(
      size.width * 0.2593125,
      size.height * 0.8080875,
      size.width * 0.2449375,
      size.height * 0.8194750,
    );
    path_0.lineTo(size.width * 0.2521250, size.height * 0.7583750);
    path_0.quadraticBezierTo(
      size.width * 0.2409000,
      size.height * 0.7965625,
      size.width * 0.2371500,
      size.height * 0.7985125,
    );
    path_0.cubicTo(
      size.width * 0.2193375,
      size.height * 0.7962625,
      size.width * 0.2067625,
      size.height * 0.8070500,
      size.width * 0.1964250,
      size.height * 0.8039000,
    );
    path_0.quadraticBezierTo(
      size.width * 0.1709625,
      size.height * 0.7970125,
      size.width * 0.1682750,
      size.height * 0.7757500,
    );
    path_0.lineTo(size.width * 0.1664750, size.height * 0.7985125);
    path_0.lineTo(size.width * 0.0676375, size.height * 0.8009000);
    path_0.lineTo(size.width * 0.0640500, size.height * 0.7865250);
    path_0.lineTo(size.width * 0.0580625, size.height * 0.7985125);
    path_0.lineTo(size.width * 0, size.height * 0.7985125);
    path_0.lineTo(size.width * 0, size.height * 0.3510750);
    path_0.lineTo(size.width * 0, size.height * 0.2193375);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);
    canvas.save();
    canvas.clipPath(path_0);
    _drawDuneLayer1_1(canvas, size);
    _drawDuneLayer1_2(canvas, size);
    _drawDuneLayer1_3(canvas, size);

    canvas.restore();

    final borderPaint =
        Paint()
          ..color = const Color.fromARGB(255, 139, 69, 19) // Border color
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2.5;
    canvas.drawPath(path_0, borderPaint);
  }

  void _drawDuneLayer1_1(Canvas canvas, Size size) {
    final paint_fill_1 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color1_1,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_1 = Path();
    path_1.moveTo(size.width * -0.0625125, size.height * 0.3750625);
    path_1.quadraticBezierTo(
      size.width * 0.0643500,
      size.height * 0.4302250,
      size.width * 0.1498625,
      size.height * 0.4118000,
    );
    path_1.cubicTo(
      size.width * 0.2199750,
      size.height * 0.3959125,
      size.width * 0.3211875,
      size.height * 0.3539875,
      size.width * 0.3754375,
      size.height * 0.3454000,
    );
    path_1.cubicTo(
      size.width * 0.4323000,
      size.height * 0.3405250,
      size.width * 0.5561750,
      size.height * 0.3811875,
      size.width * 0.6477750,
      size.height * 0.3722125,
    );
    path_1.cubicTo(
      size.width * 0.7099000,
      size.height * 0.3607125,
      size.width * 0.8585625,
      size.height * 0.3405625,
      size.width * 0.9198000,
      size.height * 0.3689625,
    );
    path_1.quadraticBezierTo(
      size.width * 0.9797250,
      size.height * 0.4118500,
      size.width * 1.1545250,
      size.height * 0.4485750,
    );
    path_1.lineTo(size.width * 1.1743125, size.height * 0.6133875);
    path_1.quadraticBezierTo(
      size.width * 0.9912375,
      size.height * 0.6527250,
      size.width * 0.9168750,
      size.height * 0.6125000,
    );
    path_1.cubicTo(
      size.width * 0.8689125,
      size.height * 0.5681250,
      size.width * 0.7864125,
      size.height * 0.5536000,
      size.width * 0.7037500,
      size.height * 0.5856250,
    );
    path_1.cubicTo(
      size.width * 0.6662500,
      size.height * 0.6020375,
      size.width * 0.5870375,
      size.height * 0.6221875,
      size.width * 0.5450000,
      size.height * 0.6025000,
    );
    path_1.cubicTo(
      size.width * 0.5048500,
      size.height * 0.5814125,
      size.width * 0.4461000,
      size.height * 0.5768750,
      size.width * 0.4093750,
      size.height * 0.5781250,
    );
    path_1.cubicTo(
      size.width * 0.3651625,
      size.height * 0.5825000,
      size.width * 0.2782875,
      size.height * 0.6000000,
      size.width * 0.2337500,
      size.height * 0.6106250,
    );
    path_1.cubicTo(
      size.width * 0.1862500,
      size.height * 0.6217250,
      size.width * 0.1206250,
      size.height * 0.6707875,
      size.width * 0.0375000,
      size.height * 0.6331250,
    );
    path_1.quadraticBezierTo(
      size.width * -0.0403125,
      size.height * 0.6056250,
      size.width * -0.1112500,
      size.height * 0.6475000,
    );
    path_1.lineTo(size.width * -0.1962500, size.height * 0.5937500);
    path_1.lineTo(size.width * -0.4850000, size.height * 0.8475000);
    path_1.lineTo(size.width * -0.1275000, size.height * 1.1037500);
    path_1.lineTo(size.width * 1.3837500, size.height * 0.9437500);
    path_1.lineTo(size.width * 1.6125000, size.height * 0.6475000);
    path_1.lineTo(size.width * 1.5000000, size.height * -0.0187500);
    path_1.lineTo(size.width * 1.2075000, size.height * -0.2387500);
    path_1.lineTo(size.width * 0.3237500, size.height * -0.2887500);
    path_1.lineTo(size.width * -0.4275000, size.height * -0.1212500);
    path_1.lineTo(size.width * -0.5675000, size.height * 0.1112500);
    path_1.lineTo(size.width * -0.3350000, size.height * 0.3412500);
    path_1.lineTo(size.width * -0.0625125, size.height * 0.3750625);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);
  }

  void _drawDuneLayer1_2(Canvas canvas, Size size) {
    final paint_fill_1 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color1_2,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_0 = Path();
    path_0.moveTo(size.width * -0.1025000, size.height * 0.2731250);
    path_0.quadraticBezierTo(
      size.width * -0.0376625,
      size.height * 0.2526625,
      size.width * 0.0025000,
      size.height * 0.2856250,
    );
    path_0.cubicTo(
      size.width * 0.0301625,
      size.height * 0.3171875,
      size.width * 0.0659375,
      size.height * 0.3276625,
      size.width * 0.0925000,
      size.height * 0.3462500,
    );
    path_0.cubicTo(
      size.width * 0.1292250,
      size.height * 0.3595375,
      size.width * 0.1717250,
      size.height * 0.3559375,
      size.width * 0.2006250,
      size.height * 0.3400000,
    );
    path_0.cubicTo(
      size.width * 0.2336000,
      size.height * 0.3218750,
      size.width * 0.2837500,
      size.height * 0.2978125,
      size.width * 0.3350000,
      size.height * 0.2818750,
    );
    path_0.cubicTo(
      size.width * 0.3712500,
      size.height * 0.2714125,
      size.width * 0.4270375,
      size.height * 0.2676625,
      size.width * 0.4668750,
      size.height * 0.2856250,
    );
    path_0.cubicTo(
      size.width * 0.5198500,
      size.height * 0.3134375,
      size.width * 0.6007875,
      size.height * 0.3043750,
      size.width * 0.6575000,
      size.height * 0.2968750,
    );
    path_0.cubicTo(
      size.width * 0.7034375,
      size.height * 0.2914125,
      size.width * 0.8325000,
      size.height * 0.2732875,
      size.width * 0.8762500,
      size.height * 0.2668750,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9184375,
      size.height * 0.2590625,
      size.width * 1.0212500,
      size.height * 0.3131250,
    );
    path_0.quadraticBezierTo(
      size.width * 1.0323500,
      size.height * 0.3334375,
      size.width * 1.0406250,
      size.height * 0.3500000,
    );
    path_0.cubicTo(
      size.width * 0.9971875,
      size.height * 0.4575000,
      size.width * 1.0670375,
      size.height * 0.5039125,
      size.width * 1.0537500,
      size.height * 0.5575000,
    );
    path_0.quadraticBezierTo(
      size.width * 1.0645375,
      size.height * 0.5823500,
      size.width * 1.1187500,
      size.height * 0.6393750,
    );
    path_0.quadraticBezierTo(
      size.width * 1.0414125,
      size.height * 0.6698500,
      size.width * 1.0150000,
      size.height * 0.6956250,
    );
    path_0.cubicTo(
      size.width * 0.9882875,
      size.height * 0.7131250,
      size.width * 0.9528125,
      size.height * 0.7095375,
      size.width * 0.9343750,
      size.height * 0.7000000,
    );
    path_0.cubicTo(
      size.width * 0.8971875,
      size.height * 0.6740625,
      size.width * 0.8717250,
      size.height * 0.6584375,
      size.width * 0.8431250,
      size.height * 0.6425000,
    );
    path_0.cubicTo(
      size.width * 0.8081250,
      size.height * 0.6231250,
      size.width * 0.7839125,
      size.height * 0.6240625,
      size.width * 0.7625000,
      size.height * 0.6487500,
    );
    path_0.cubicTo(
      size.width * 0.7446875,
      size.height * 0.6746875,
      size.width * 0.7217250,
      size.height * 0.6951625,
      size.width * 0.6981250,
      size.height * 0.6937500,
    );
    path_0.cubicTo(
      size.width * 0.6592250,
      size.height * 0.6929750,
      size.width * 0.6189125,
      size.height * 0.6534375,
      size.width * 0.5756250,
      size.height * 0.6525000,
    );
    path_0.cubicTo(
      size.width * 0.5175000,
      size.height * 0.6515625,
      size.width * 0.4868750,
      size.height * 0.6715625,
      size.width * 0.4625000,
      size.height * 0.6875000,
    );
    path_0.cubicTo(
      size.width * 0.4389125,
      size.height * 0.7012500,
      size.width * 0.4040625,
      size.height * 0.7159375,
      size.width * 0.3812500,
      size.height * 0.7106250,
    );
    path_0.cubicTo(
      size.width * 0.3471875,
      size.height * 0.7065625,
      size.width * 0.2584375,
      size.height * 0.6786000,
      size.width * 0.2231250,
      size.height * 0.6812500,
    );
    path_0.cubicTo(
      size.width * 0.1887500,
      size.height * 0.6832875,
      size.width * 0.1143750,
      size.height * 0.7054750,
      size.width * 0.0893750,
      size.height * 0.7150000,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0603125,
      size.height * 0.7221875,
      size.width * -0.0706250,
      size.height * 0.6981250,
    );
    path_0.lineTo(size.width * -0.1587500, size.height * 0.7175000);
    path_0.lineTo(size.width * -0.2325000, size.height * 0.7787500);
    path_0.lineTo(size.width * -0.2162500, size.height * 1.0212500);
    path_0.lineTo(size.width * 0.6137500, size.height * 1.1500000);
    path_0.lineTo(size.width * 1.2412500, size.height * 1.0275000);
    path_0.lineTo(size.width * 1.4100000, size.height * 0.5850000);
    path_0.lineTo(size.width * 1.3375000, size.height * 0.3075000);
    path_0.lineTo(size.width * 1.1975000, size.height * 0.0062500);
    path_0.lineTo(size.width * 0.7100000, size.height * -0.1062500);
    path_0.lineTo(size.width * 0.1700000, size.height * -0.1075000);
    path_0.lineTo(size.width * -0.2775000, size.height * -0.0350000);
    path_0.lineTo(size.width * -0.3275000, size.height * 0.1875000);
    path_0.lineTo(size.width * -0.2775000, size.height * 0.2975000);
    path_0.lineTo(size.width * -0.1825000, size.height * 0.3550000);
    path_0.lineTo(size.width * -0.1075000, size.height * 0.3400000);
    path_0.lineTo(size.width * -0.1025000, size.height * 0.2731250);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_1);
  }

  void _drawDuneLayer1_3(Canvas canvas, Size size) {
    final paint_fill_1 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color1_4,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.0993750, size.height * 0.2262500);
    path_1.cubicTo(
      size.width * 0.0759375,
      size.height * 0.2121875,
      size.width * 0.0950000,
      size.height * 0.2087500,
      size.width * 0.0681250,
      size.height * 0.2075000,
    );
    path_1.cubicTo(
      size.width * 0.0501625,
      size.height * 0.2070375,
      size.width * 0.0437500,
      size.height * 0.2078125,
      size.width * 0.0237500,
      size.height * 0.2037500,
    );
    path_1.quadraticBezierTo(
      size.width * 0.0031250,
      size.height * 0.1998500,
      size.width * -0.0118750,
      size.height * 0.2081250,
    );
    path_1.lineTo(size.width * -0.0737500, size.height * 0.1912500);
    path_1.lineTo(size.width * -0.0575000, size.height * 0.0437500);
    path_1.lineTo(size.width * 0.0125000, size.height * -0.0375000);
    path_1.lineTo(size.width * 0.3300000, size.height * -0.0612500);
    path_1.lineTo(size.width * 0.6812500, size.height * -0.0987500);
    path_1.lineTo(size.width * 0.9462500, size.height * -0.0562500);
    path_1.lineTo(size.width * 1.0187500, size.height * -0.0350000);
    path_1.lineTo(size.width * 1.1850000, size.height * 0.2850000);
    path_1.lineTo(size.width * 1.2575000, size.height * 0.7112500);
    path_1.lineTo(size.width * 1.1237500, size.height * 0.9825000);
    path_1.lineTo(size.width * 0.7525000, size.height * 0.9987500);
    path_1.lineTo(size.width * 0.1837500, size.height * 1.0225000);
    path_1.lineTo(size.width * -0.1875000, size.height * 0.9462500);
    path_1.lineTo(size.width * -0.1837500, size.height * 0.8175000);
    path_1.lineTo(size.width * -0.1462500, size.height * 0.7550000);
    path_1.lineTo(size.width * -0.0450000, size.height * 0.7737500);
    path_1.quadraticBezierTo(
      size.width * -0.0200000,
      size.height * 0.7854750,
      size.width * -0.0025000,
      size.height * 0.7893750,
    );
    path_1.quadraticBezierTo(
      size.width * 0.0159375,
      size.height * 0.7903125,
      size.width * 0.0512500,
      size.height * 0.7906250,
    );
    path_1.lineTo(size.width * 0.0550000, size.height * 0.7768750);
    path_1.lineTo(size.width * 0.0762500, size.height * 0.7575000);
    path_1.lineTo(size.width * 0.0725000, size.height * 0.7900000);
    path_1.quadraticBezierTo(
      size.width * 0.0940625,
      size.height * 0.7903125,
      size.width * 0.1093750,
      size.height * 0.7912500,
    );
    path_1.quadraticBezierTo(
      size.width * 0.1289125,
      size.height * 0.7906250,
      size.width * 0.1518750,
      size.height * 0.7887500,
    );
    path_1.lineTo(size.width * 0.1625000, size.height * 0.7706250);
    path_1.lineTo(size.width * 0.1662500, size.height * 0.7468750);
    path_1.lineTo(size.width * 0.1862500, size.height * 0.7912500);
    path_1.lineTo(size.width * 0.2356250, size.height * 0.7900000);
    path_1.lineTo(size.width * 0.2325000, size.height * 0.7718750);
    path_1.lineTo(size.width * 0.2612500, size.height * 0.7300000);
    path_1.lineTo(size.width * 0.2637500, size.height * 0.7775000);
    path_1.lineTo(size.width * 0.2612500, size.height * 0.7962500);
    path_1.lineTo(size.width * 0.2762500, size.height * 0.7837500);
    path_1.quadraticBezierTo(
      size.width * 0.3859375,
      size.height * 0.7871875,
      size.width * 0.4087500,
      size.height * 0.7875000,
    );
    path_1.quadraticBezierTo(
      size.width * 0.4290625,
      size.height * 0.7879750,
      size.width * 0.4837500,
      size.height * 0.7918750,
    );
    path_1.lineTo(size.width * 0.4750000, size.height * 0.7787500);
    path_1.lineTo(size.width * 0.4850000, size.height * 0.7625000);
    path_1.lineTo(size.width * 0.4843750, size.height * 0.7387500);
    path_1.lineTo(size.width * 0.5081250, size.height * 0.7900000);
    path_1.quadraticBezierTo(
      size.width * 0.5484375,
      size.height * 0.7851625,
      size.width * 0.5687500,
      size.height * 0.7868750,
    );
    path_1.quadraticBezierTo(
      size.width * 0.5928125,
      size.height * 0.7892250,
      size.width * 0.6325000,
      size.height * 0.7862500,
    );
    path_1.lineTo(size.width * 0.6387500, size.height * 0.7631250);
    path_1.lineTo(size.width * 0.6568750, size.height * 0.7468750);
    path_1.lineTo(size.width * 0.6662500, size.height * 0.7912500);
    path_1.lineTo(size.width * 0.7475000, size.height * 0.7875000);
    path_1.lineTo(size.width * 0.7750000, size.height * 0.7900000);
    path_1.lineTo(size.width * 0.7825000, size.height * 0.7712500);
    path_1.lineTo(size.width * 0.7800000, size.height * 0.7550000);
    path_1.lineTo(size.width * 0.8050000, size.height * 0.7062500);
    path_1.lineTo(size.width * 0.8100000, size.height * 0.7850000);
    path_1.lineTo(size.width * 0.8287500, size.height * 0.7912500);
    path_1.lineTo(size.width * 0.8687500, size.height * 0.7900000);
    path_1.lineTo(size.width * 0.8850000, size.height * 0.7737500);
    path_1.lineTo(size.width * 0.8937500, size.height * 0.7912500);
    path_1.lineTo(size.width * 0.9337500, size.height * 0.7912500);
    path_1.lineTo(size.width * 0.9268750, size.height * 0.7756250);
    path_1.lineTo(size.width * 0.9306250, size.height * 0.7550000);
    path_1.lineTo(size.width * 0.9512500, size.height * 0.7750000);
    path_1.quadraticBezierTo(
      size.width * 0.9781250,
      size.height * 0.7775000,
      size.width * 0.9912500,
      size.height * 0.7725000,
    );
    path_1.quadraticBezierTo(
      size.width * 1.0112500,
      size.height * 0.7668750,
      size.width * 1.0787500,
      size.height * 0.7525000,
    );
    path_1.lineTo(size.width * 1.0375000, size.height * 0.6775000);
    path_1.lineTo(size.width * 1.0212500, size.height * 0.2037500);
    path_1.lineTo(size.width * 1.0656250, size.height * 0.2056250);
    path_1.quadraticBezierTo(
      size.width * 1.0125000,
      size.height * 0.2143750,
      size.width * 0.9862500,
      size.height * 0.2087500,
    );
    path_1.cubicTo(
      size.width * 0.9706250,
      size.height * 0.2064125,
      size.width * 0.9431250,
      size.height * 0.1993750,
      size.width * 0.9256250,
      size.height * 0.2012500,
    );
    path_1.quadraticBezierTo(
      size.width * 0.9056250,
      size.height * 0.2037500,
      size.width * 0.8737500,
      size.height * 0.2075000,
    );
    path_1.lineTo(size.width * 0.8575000, size.height * 0.2025000);
    path_1.lineTo(size.width * 0.8212500, size.height * 0.2025000);
    path_1.lineTo(size.width * 0.8162500, size.height * 0.2187500);
    path_1.lineTo(size.width * 0.7950000, size.height * 0.2287500);
    path_1.lineTo(size.width * 0.8012500, size.height * 0.2100000);
    path_1.lineTo(size.width * 0.8000000, size.height * 0.2050000);
    path_1.quadraticBezierTo(
      size.width * 0.7606250,
      size.height * 0.2053125,
      size.width * 0.7443750,
      size.height * 0.2056250,
    );
    path_1.quadraticBezierTo(
      size.width * 0.7281250,
      size.height * 0.2040625,
      size.width * 0.7000000,
      size.height * 0.2025000,
    );
    path_1.lineTo(size.width * 0.6812500, size.height * 0.2187500);
    path_1.lineTo(size.width * 0.6750000, size.height * 0.2050000);
    path_1.lineTo(size.width * 0.6187500, size.height * 0.2062500);
    path_1.lineTo(size.width * 0.5925000, size.height * 0.2062500);
    path_1.lineTo(size.width * 0.5812500, size.height * 0.2375000);
    path_1.lineTo(size.width * 0.5400000, size.height * 0.2462500);
    path_1.lineTo(size.width * 0.5625000, size.height * 0.2287500);
    path_1.lineTo(size.width * 0.5575000, size.height * 0.2087500);
    path_1.lineTo(size.width * 0.5350000, size.height * 0.2062500);
    path_1.quadraticBezierTo(
      size.width * 0.4925000,
      size.height * 0.2050000,
      size.width * 0.4750000,
      size.height * 0.2037500,
    );
    path_1.quadraticBezierTo(
      size.width * 0.4542250,
      size.height * 0.2025000,
      size.width * 0.4237500,
      size.height * 0.2037500,
    );
    path_1.lineTo(size.width * 0.4200000, size.height * 0.2150000);
    path_1.quadraticBezierTo(
      size.width * 0.4000000,
      size.height * 0.2109375,
      size.width * 0.3875000,
      size.height * 0.2093750,
    );
    path_1.cubicTo(
      size.width * 0.3736000,
      size.height * 0.2082875,
      size.width * 0.3565625,
      size.height * 0.2040625,
      size.width * 0.3431250,
      size.height * 0.2037500,
    );
    path_1.quadraticBezierTo(
      size.width * 0.3275000,
      size.height * 0.2040625,
      size.width * 0.3037500,
      size.height * 0.2037500,
    );
    path_1.lineTo(size.width * 0.3000000, size.height * 0.2250000);
    path_1.lineTo(size.width * 0.2725000, size.height * 0.2362500);
    path_1.lineTo(size.width * 0.2850000, size.height * 0.2175000);
    path_1.lineTo(size.width * 0.2812500, size.height * 0.2087500);
    path_1.lineTo(size.width * 0.2500000, size.height * 0.2050000);
    path_1.lineTo(size.width * 0.2537500, size.height * 0.2350000);
    path_1.lineTo(size.width * 0.2237500, size.height * 0.2150000);
    path_1.lineTo(size.width * 0.2068750, size.height * 0.2250000);
    path_1.lineTo(size.width * 0.2000000, size.height * 0.2468750);
    path_1.lineTo(size.width * 0.2012500, size.height * 0.2050000);
    path_1.lineTo(size.width * 0.1231250, size.height * 0.2043750);
    path_1.quadraticBezierTo(
      size.width * 0.1223500,
      size.height * 0.2131250,
      size.width * 0.1181250,
      size.height * 0.2300000,
    );
    path_1.quadraticBezierTo(
      size.width * 0.1136000,
      size.height * 0.2432875,
      size.width * 0.1081250,
      size.height * 0.2693750,
    );
    path_1.quadraticBezierTo(
      size.width * 0.1059375,
      size.height * 0.2585938,
      size.width * 0.0993750,
      size.height * 0.2262500,
    );
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
