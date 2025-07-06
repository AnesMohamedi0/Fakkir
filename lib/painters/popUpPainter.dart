import 'package:flutter/material.dart';
import 'package:general_knowledge_app/views/shared/colors.dart';

class PopUpPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint_fill_1 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: colorsMain,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8314125, size.height * 0.0518125);
    path_0.quadraticBezierTo(
      size.width * 0.8120500,
      size.height * 0.0850750,
      size.width * 0.7668375,
      size.height * 0.1003625,
    );
    path_0.cubicTo(
      size.width * 0.7275750,
      size.height * 0.1130875,
      size.width * 0.6668500,
      size.height * 0.1291625,
      size.width * 0.6275375,
      size.height * 0.1256125,
    );
    path_0.cubicTo(
      size.width * 0.5871125,
      size.height * 0.1222750,
      size.width * 0.5051625,
      size.height * 0.1269250,
      size.width * 0.4799125,
      size.height * 0.1465000,
    );
    path_0.quadraticBezierTo(
      size.width * 0.4519875,
      size.height * 0.1669375,
      size.width * 0.3937750,
      size.height * 0.1869875,
    );
    path_0.lineTo(size.width * 0.3863125, size.height * 0.2229000);
    path_0.lineTo(size.width * 0.3841125, size.height * 0.2006500);
    path_0.lineTo(size.width * 0.3747375, size.height * 0.1869500);
    path_0.quadraticBezierTo(
      size.width * 0.3434250,
      size.height * 0.1895125,
      size.width * 0.3269500,
      size.height * 0.1968250,
    );
    path_0.cubicTo(
      size.width * 0.2993750,
      size.height * 0.2075750,
      size.width * 0.2873375,
      size.height * 0.2223500,
      size.width * 0.2703750,
      size.height * 0.2310625,
    );
    path_0.quadraticBezierTo(
      size.width * 0.2512625,
      size.height * 0.2429125,
      size.width * 0.2208000,
      size.height * 0.2309875,
    );
    path_0.lineTo(size.width * 0.2245500, size.height * 0.2497750);
    path_0.lineTo(size.width * 0.2065000, size.height * 0.2774750);
    path_0.lineTo(size.width * 0.2134625, size.height * 0.2491875);
    path_0.lineTo(size.width * 0.2024625, size.height * 0.2171500);
    path_0.quadraticBezierTo(
      size.width * 0.1917250,
      size.height * 0.2306125,
      size.width * 0.1787625,
      size.height * 0.2357250,
    );
    path_0.cubicTo(
      size.width * 0.1602375,
      size.height * 0.2436125,
      size.width * 0.1155125,
      size.height * 0.2411125,
      size.width * 0.0908875,
      size.height * 0.2479000,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0525375,
      size.height * 0.2581875,
      size.width * 0.0081125,
      size.height * 0.2703125,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0135500,
      size.height * 0.3457250,
      size.width * 0.0216125,
      size.height * 0.3687875,
    );
    path_0.cubicTo(
      size.width * 0.0282000,
      size.height * 0.3882500,
      size.width * 0.0429250,
      size.height * 0.4790375,
      size.width * 0.0467000,
      size.height * 0.5047500,
    );
    path_0.cubicTo(
      size.width * 0.0502125,
      size.height * 0.5318500,
      size.width * 0.0327625,
      size.height * 0.6250000,
      size.width * 0.0304000,
      size.height * 0.6603000,
    );
    path_0.cubicTo(
      size.width * 0.0270125,
      size.height * 0.6987250,
      size.width * 0.0277250,
      size.height * 0.7666625,
      size.width * 0.0274500,
      size.height * 0.8033625,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0264250,
      size.height * 0.8388250,
      size.width * 0.0258625,
      size.height * 0.9095625,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0937000,
      size.height * 0.8967500,
      size.width * 0.1240125,
      size.height * 0.8964375,
    );
    path_0.quadraticBezierTo(
      size.width * 0.1707125,
      size.height * 0.9017125,
      size.width * 0.3039500,
      size.height * 0.9094000,
    );
    path_0.lineTo(size.width * 0.3013625, size.height * 0.8796875);
    path_0.lineTo(size.width * 0.3142875, size.height * 0.8525750);
    path_0.lineTo(size.width * 0.3117000, size.height * 0.8822750);
    path_0.lineTo(size.width * 0.3272000, size.height * 0.9068125);
    path_0.quadraticBezierTo(
      size.width * 0.4035625,
      size.height * 0.9086875,
      size.width * 0.4458875,
      size.height * 0.9068125,
    );
    path_0.cubicTo(
      size.width * 0.4821875,
      size.height * 0.9066750,
      size.width * 0.5288375,
      size.height * 0.8920125,
      size.width * 0.5604500,
      size.height * 0.8799875,
    );
    path_0.quadraticBezierTo(
      size.width * 0.5784125,
      size.height * 0.8735250,
      size.width * 0.6216625,
      size.height * 0.8629000,
    );
    path_0.lineTo(size.width * 0.6326250, size.height * 0.8217000);
    path_0.lineTo(size.width * 0.6319875, size.height * 0.8525750);
    path_0.lineTo(size.width * 0.6384500, size.height * 0.8680625);
    path_0.quadraticBezierTo(
      size.width * 0.6514750,
      size.height * 0.8541625,
      size.width * 0.6635250,
      size.height * 0.8484875,
    );
    path_0.cubicTo(
      size.width * 0.6836625,
      size.height * 0.8449500,
      size.width * 0.7309875,
      size.height * 0.8539625,
      size.width * 0.7516000,
      size.height * 0.8518250,
    );
    path_0.cubicTo(
      size.width * 0.7833500,
      size.height * 0.8505250,
      size.width * 0.8323375,
      size.height * 0.8432250,
      size.width * 0.8686250,
      size.height * 0.8322375,
    );
    path_0.cubicTo(
      size.width * 0.9036375,
      size.height * 0.8153750,
      size.width * 0.9431000,
      size.height * 0.7509750,
      size.width * 0.9517500,
      size.height * 0.7098250,
    );
    path_0.cubicTo(
      size.width * 0.9636500,
      size.height * 0.6548125,
      size.width * 0.9891125,
      size.height * 0.6131000,
      size.width * 0.9863000,
      size.height * 0.5680500,
    );
    path_0.cubicTo(
      size.width * 0.9797875,
      size.height * 0.5256500,
      size.width * 0.9639750,
      size.height * 0.5249000,
      size.width * 0.9426125,
      size.height * 0.4912500,
    );
    path_0.cubicTo(
      size.width * 0.9196250,
      size.height * 0.4590500,
      size.width * 0.8830375,
      size.height * 0.4107250,
      size.width * 0.8738625,
      size.height * 0.3639375,
    );
    path_0.cubicTo(
      size.width * 0.8651625,
      size.height * 0.2990000,
      size.width * 0.8869625,
      size.height * 0.2238625,
      size.width * 0.8805875,
      size.height * 0.1594500,
    );
    path_0.cubicTo(
      size.width * 0.8790750,
      size.height * 0.1112375,
      size.width * 0.8723750,
      size.height * 0.0914375,
      size.width * 0.8596375,
      size.height * 0.0643875,
    );
    path_0.quadraticBezierTo(
      size.width * 0.8457125,
      size.height * 0.0557750,
      size.width * 0.8314125,
      size.height * 0.0518125,
    );
    path_0.close();

    canvas.drawPath(path_0, paint_fill_1);
    canvas.save();
    canvas.clipPath(path_0);
    _layer1_1(canvas, size);
    _layer1_2(canvas, size);
    _layer1_3(canvas, size);
    _layer2(canvas, size);
    canvas.restore();
    final borderPaint =
        Paint()
          ..color = const Color.fromARGB(255, 83, 35, 1) // Border color
          ..style = PaintingStyle.stroke
          ..strokeWidth = 3.0;
    canvas.drawPath(path_0, borderPaint);
  }

  _layer1_1(Canvas canvas, Size size) {
    final paint_fill_1 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color1_1,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3350000, size.height * 0.3706250);
    path_0.cubicTo(
      size.width * 0.2881250,
      size.height * 0.3842187,
      size.width * 0.2884375,
      size.height * 0.3757875,
      size.width * 0.2725000,
      size.height * 0.3887500,
    );
    path_0.cubicTo(
      size.width * 0.2537500,
      size.height * 0.4000000,
      size.width * 0.2334375,
      size.height * 0.4045375,
      size.width * 0.2150000,
      size.height * 0.4000000,
    );
    path_0.quadraticBezierTo(
      size.width * 0.1900000,
      size.height * 0.3920375,
      size.width * 0.1625000,
      size.height * 0.4000000,
    );
    path_0.quadraticBezierTo(
      size.width * 0.1815625,
      size.height * 0.4345375,
      size.width * 0.1762500,
      size.height * 0.4593750,
    );
    path_0.cubicTo(
      size.width * 0.1690625,
      size.height * 0.4932875,
      size.width * 0.1929750,
      size.height * 0.5268750,
      size.width * 0.1950000,
      size.height * 0.5593750,
    );
    path_0.cubicTo(
      size.width * 0.1970375,
      size.height * 0.5926625,
      size.width * 0.1907875,
      size.height * 0.6304750,
      size.width * 0.1881250,
      size.height * 0.6581250,
    );
    path_0.cubicTo(
      size.width * 0.1832875,
      size.height * 0.6925000,
      size.width * 0.1975000,
      size.height * 0.7012500,
      size.width * 0.1931250,
      size.height * 0.7256250,
    );
    path_0.quadraticBezierTo(
      size.width * 0.1889125,
      size.height * 0.7404750,
      size.width * 0.1887500,
      size.height * 0.7656250,
    );
    path_0.quadraticBezierTo(
      size.width * 0.2071875,
      size.height * 0.7467250,
      size.width * 0.2300000,
      size.height * 0.7462500,
    );
    path_0.cubicTo(
      size.width * 0.2612500,
      size.height * 0.7440625,
      size.width * 0.3067250,
      size.height * 0.7504750,
      size.width * 0.3406250,
      size.height * 0.7518750,
    );
    path_0.cubicTo(
      size.width * 0.3701625,
      size.height * 0.7532875,
      size.width * 0.4184375,
      size.height * 0.7361000,
      size.width * 0.4543750,
      size.height * 0.7375000,
    );
    path_0.cubicTo(
      size.width * 0.4832875,
      size.height * 0.7403125,
      size.width * 0.5403125,
      size.height * 0.7407875,
      size.width * 0.5525000,
      size.height * 0.7243750,
    );
    path_0.cubicTo(
      size.width * 0.5632875,
      size.height * 0.7051625,
      size.width * 0.5817250,
      size.height * 0.6343750,
      size.width * 0.5818750,
      size.height * 0.6106250,
    );
    path_0.cubicTo(
      size.width * 0.5804750,
      size.height * 0.5767250,
      size.width * 0.5986000,
      size.height * 0.5217250,
      size.width * 0.6150000,
      size.height * 0.5018750,
    );
    path_0.cubicTo(
      size.width * 0.6390625,
      size.height * 0.4809375,
      size.width * 0.6925000,
      size.height * 0.4409375,
      size.width * 0.7025000,
      size.height * 0.4131250,
    );
    path_0.cubicTo(
      size.width * 0.7134375,
      size.height * 0.3904750,
      size.width * 0.7462500,
      size.height * 0.3776625,
      size.width * 0.7600000,
      size.height * 0.3525000,
    );
    path_0.quadraticBezierTo(
      size.width * 0.7718750,
      size.height * 0.3262500,
      size.width * 0.7575000,
      size.height * 0.2700000,
    );
    path_0.lineTo(size.width * 0.7587500, size.height * 0.2325000);
    path_0.lineTo(size.width * 0.7312500, size.height * 0.2500000);
    path_0.quadraticBezierTo(
      size.width * 0.6361000,
      size.height * 0.2637500,
      size.width * 0.5975000,
      size.height * 0.2818750,
    );
    path_0.cubicTo(
      size.width * 0.5511000,
      size.height * 0.3009375,
      size.width * 0.4862500,
      size.height * 0.3039125,
      size.width * 0.4468750,
      size.height * 0.3118750,
    );
    path_0.quadraticBezierTo(
      size.width * 0.4196875,
      size.height * 0.3184375,
      size.width * 0.3662500,
      size.height * 0.3525000,
    );
    path_0.lineTo(size.width * 0.3462500, size.height * 0.0512500);
    path_0.lineTo(size.width * 0.9537500, size.height * -0.0387500);
    path_0.lineTo(size.width * 1.0025000, size.height * 0.8150000);
    path_0.lineTo(size.width * 0.1112500, size.height * 0.9837500);
    path_0.lineTo(size.width * -0.0312500, size.height * 0.9162500);
    path_0.lineTo(size.width * -0.0637500, size.height * 0.2712500);
    path_0.lineTo(size.width * 0.1512500, size.height * 0.0400000);
    path_0.lineTo(size.width * 0.3462500, size.height * 0.0512500);
    path_0.lineTo(size.width * 0.3662500, size.height * 0.3525000);
    path_0.quadraticBezierTo(
      size.width * 0.3584375,
      size.height * 0.3570313,
      size.width * 0.3350000,
      size.height * 0.3706250,
    );
    path_0.close();

    canvas.drawPath(path_0, paint_fill_1);
  }

  _layer1_2(Canvas canvas, Size size) {
    final paint_fill_1 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color1_2,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));
    Path path_1 = Path();
    path_1.moveTo(size.width * 0.2750000, size.height * 0.3068750);
    path_1.cubicTo(
      size.width * 0.2271875,
      size.height * 0.3373437,
      size.width * 0.2312500,
      size.height * 0.3442250,
      size.width * 0.2112500,
      size.height * 0.3475000,
    );
    path_1.cubicTo(
      size.width * 0.1831250,
      size.height * 0.3484375,
      size.width * 0.1578125,
      size.height * 0.3431250,
      size.width * 0.1400000,
      size.height * 0.3400000,
    );
    path_1.quadraticBezierTo(
      size.width * 0.1187500,
      size.height * 0.3362500,
      size.width * 0.0900000,
      size.height * 0.3450000,
    );
    path_1.quadraticBezierTo(
      size.width * 0.1064125,
      size.height * 0.3728125,
      size.width * 0.1093750,
      size.height * 0.3887500,
    );
    path_1.cubicTo(
      size.width * 0.1126625,
      size.height * 0.4228125,
      size.width * 0.1146875,
      size.height * 0.4736000,
      size.width * 0.1081250,
      size.height * 0.5062500,
    );
    path_1.cubicTo(
      size.width * 0.1014125,
      size.height * 0.5304750,
      size.width * 0.1095375,
      size.height * 0.5853125,
      size.width * 0.1137500,
      size.height * 0.6162500,
    );
    path_1.cubicTo(
      size.width * 0.1153125,
      size.height * 0.6546875,
      size.width * 0.0921875,
      size.height * 0.7117250,
      size.width * 0.0975000,
      size.height * 0.7462500,
    );
    path_1.quadraticBezierTo(
      size.width * 0.1009375,
      size.height * 0.7796875,
      size.width * 0.0968750,
      size.height * 0.8356250,
    );
    path_1.quadraticBezierTo(
      size.width * 0.1418750,
      size.height * 0.8132875,
      size.width * 0.1593750,
      size.height * 0.8206250,
    );
    path_1.cubicTo(
      size.width * 0.1811000,
      size.height * 0.8275000,
      size.width * 0.2095375,
      size.height * 0.8373500,
      size.width * 0.2312500,
      size.height * 0.8362500,
    );
    path_1.cubicTo(
      size.width * 0.2575000,
      size.height * 0.8318750,
      size.width * 0.2878125,
      size.height * 0.7971875,
      size.width * 0.3231250,
      size.height * 0.7956250,
    );
    path_1.cubicTo(
      size.width * 0.3543750,
      size.height * 0.7965625,
      size.width * 0.3989125,
      size.height * 0.8257875,
      size.width * 0.4325000,
      size.height * 0.8212500,
    );
    path_1.cubicTo(
      size.width * 0.4596875,
      size.height * 0.8156250,
      size.width * 0.4853125,
      size.height * 0.8178125,
      size.width * 0.5131250,
      size.height * 0.8206250,
    );
    path_1.cubicTo(
      size.width * 0.5384375,
      size.height * 0.8221875,
      size.width * 0.5526625,
      size.height * 0.8061000,
      size.width * 0.5700000,
      size.height * 0.7937500,
    );
    path_1.cubicTo(
      size.width * 0.5865625,
      size.height * 0.7818750,
      size.width * 0.6264125,
      size.height * 0.7771875,
      size.width * 0.6343750,
      size.height * 0.7625000,
    );
    path_1.cubicTo(
      size.width * 0.6434375,
      size.height * 0.7478125,
      size.width * 0.6570375,
      size.height * 0.6953125,
      size.width * 0.6531250,
      size.height * 0.6668750,
    );
    path_1.cubicTo(
      size.width * 0.6484375,
      size.height * 0.6331250,
      size.width * 0.6565625,
      size.height * 0.5364125,
      size.width * 0.6868750,
      size.height * 0.5043750,
    );
    path_1.cubicTo(
      size.width * 0.7170375,
      size.height * 0.4771875,
      size.width * 0.7895375,
      size.height * 0.4581250,
      size.width * 0.8068750,
      size.height * 0.4112500,
    );
    path_1.cubicTo(
      size.width * 0.8290625,
      size.height * 0.3386000,
      size.width * 0.8225000,
      size.height * 0.2686000,
      size.width * 0.8156250,
      size.height * 0.2312500,
    );
    path_1.quadraticBezierTo(
      size.width * 0.8078125,
      size.height * 0.1943750,
      size.width * 0.8006250,
      size.height * 0.1600000,
    );
    path_1.quadraticBezierTo(
      size.width * 0.7589125,
      size.height * 0.1893750,
      size.width * 0.7300000,
      size.height * 0.2025000,
    );
    path_1.cubicTo(
      size.width * 0.6990625,
      size.height * 0.2118750,
      size.width * 0.6379750,
      size.height * 0.1865625,
      size.width * 0.6006250,
      size.height * 0.1893750,
    );
    path_1.cubicTo(
      size.width * 0.5611000,
      size.height * 0.1925000,
      size.width * 0.5082875,
      size.height * 0.2020375,
      size.width * 0.4850000,
      size.height * 0.2162500,
    );
    path_1.cubicTo(
      size.width * 0.4575000,
      size.height * 0.2321875,
      size.width * 0.4286000,
      size.height * 0.2484375,
      size.width * 0.4031250,
      size.height * 0.2675000,
    );
    path_1.quadraticBezierTo(
      size.width * 0.3623500,
      size.height * 0.2796875,
      size.width * 0.3350000,
      size.height * 0.2937500,
    );
    path_1.lineTo(size.width * 0.3250000, size.height * 0.2900000);
    path_1.lineTo(size.width * 0.3062500, size.height * 0.0787500);
    path_1.lineTo(size.width * 0.9212500, size.height * 0.0062500);
    path_1.lineTo(size.width * 0.9900000, size.height * 0.8087500);
    path_1.lineTo(size.width * 0.1062500, size.height * 0.9637500);
    path_1.lineTo(size.width * -0.0187500, size.height * 0.9087500);
    path_1.lineTo(size.width * -0.0487500, size.height * 0.2800000);
    path_1.lineTo(size.width * 0.1537500, size.height * 0.0562500);
    path_1.lineTo(size.width * 0.3056250, size.height * 0.0781250);
    path_1.lineTo(size.width * 0.3250000, size.height * 0.2925000);
    path_1.quadraticBezierTo(
      size.width * 0.3125000,
      size.height * 0.2960937,
      size.width * 0.2750000,
      size.height * 0.3068750,
    );
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);
  }

  _layer1_3(Canvas canvas, Size size) {
    final paint_fill_1 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color1_3,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));
    Path path_1 = Path();
    path_1.moveTo(size.width * 0.0237500, size.height * 0.2837500);
    path_1.lineTo(size.width * 0.0262500, size.height * 0.3437500);
    path_1.lineTo(size.width * 0.0375000, size.height * 0.3812500);
    path_1.lineTo(size.width * 0.0537500, size.height * 0.4837500);
    path_1.lineTo(size.width * 0.0600000, size.height * 0.5300000);
    path_1.lineTo(size.width * 0.0487500, size.height * 0.6287500);
    path_1.lineTo(size.width * 0.0412500, size.height * 0.6887500);
    path_1.lineTo(size.width * 0.0387500, size.height * 0.8000000);
    path_1.lineTo(size.width * 0.0387500, size.height * 0.8912500);
    path_1.lineTo(size.width * 0.0362500, size.height * 0.9012500);
    path_1.lineTo(size.width * 0.0487500, size.height * 0.8912500);
    path_1.lineTo(size.width * 0.1175000, size.height * 0.8875000);
    path_1.lineTo(size.width * 0.1725000, size.height * 0.8937500);
    path_1.lineTo(size.width * 0.2350000, size.height * 0.8987500);
    path_1.lineTo(size.width * 0.2912500, size.height * 0.9025000);
    path_1.lineTo(size.width * 0.2862500, size.height * 0.8787500);
    path_1.lineTo(size.width * 0.3325000, size.height * 0.8237500);
    path_1.lineTo(size.width * 0.3212500, size.height * 0.8750000);
    path_1.lineTo(size.width * 0.3350000, size.height * 0.8987500);
    path_1.lineTo(size.width * 0.3650000, size.height * 0.9012500);
    path_1.lineTo(size.width * 0.4062500, size.height * 0.9012500);
    path_1.lineTo(size.width * 0.4087500, size.height * 0.8787500);
    path_1.lineTo(size.width * 0.4125000, size.height * 0.9000000);
    path_1.lineTo(size.width * 0.4287500, size.height * 0.8950000);
    path_1.lineTo(size.width * 0.4500000, size.height * 0.8975000);
    path_1.lineTo(size.width * 0.5137500, size.height * 0.8850000);
    path_1.lineTo(size.width * 0.5612500, size.height * 0.8662500);
    path_1.lineTo(size.width * 0.6150000, size.height * 0.8550000);
    path_1.lineTo(size.width * 0.6137500, size.height * 0.8275000);
    path_1.lineTo(size.width * 0.6487500, size.height * 0.8000000);
    path_1.lineTo(size.width * 0.6437500, size.height * 0.8387500);
    path_1.lineTo(size.width * 0.6400000, size.height * 0.8562500);
    path_1.lineTo(size.width * 0.6587500, size.height * 0.8362500);
    path_1.lineTo(size.width * 0.7125000, size.height * 0.8400000);
    path_1.lineTo(size.width * 0.8050000, size.height * 0.8387500);
    path_1.lineTo(size.width * 0.8912500, size.height * 0.8137500);
    path_1.lineTo(size.width * 0.9575000, size.height * 0.7650000);
    path_1.lineTo(size.width * 0.9800000, size.height * 0.6712500);
    path_1.lineTo(size.width * 0.9787500, size.height * 0.5825000);
    path_1.lineTo(size.width * 0.9562500, size.height * 0.5325000);
    path_1.lineTo(size.width * 0.9012500, size.height * 0.4650000);
    path_1.lineTo(size.width * 0.8625000, size.height * 0.3600000);
    path_1.lineTo(size.width * 0.8612500, size.height * 0.2537500);
    path_1.lineTo(size.width * 0.8687500, size.height * 0.1837500);
    path_1.lineTo(size.width * 0.8562500, size.height * 0.1162500);
    path_1.lineTo(size.width * 0.8387500, size.height * 0.0675000);
    path_1.lineTo(size.width * 0.8312500, size.height * 0.0850000);
    path_1.lineTo(size.width * 0.7600000, size.height * 0.1162500);
    path_1.lineTo(size.width * 0.6475000, size.height * 0.1362500);
    path_1.lineTo(size.width * 0.5725000, size.height * 0.1350000);
    path_1.lineTo(size.width * 0.5050000, size.height * 0.1450000);
    path_1.lineTo(size.width * 0.4800000, size.height * 0.1612500);
    path_1.lineTo(size.width * 0.4037500, size.height * 0.1912500);
    path_1.lineTo(size.width * 0.3975000, size.height * 0.2275000);
    path_1.lineTo(size.width * 0.3625000, size.height * 0.2487500);
    path_1.lineTo(size.width * 0.3775000, size.height * 0.2187500);
    path_1.lineTo(size.width * 0.3737500, size.height * 0.1962500);
    path_1.lineTo(size.width * 0.3612500, size.height * 0.1962500);
    path_1.lineTo(size.width * 0.3212500, size.height * 0.2100000);
    path_1.lineTo(size.width * 0.2937500, size.height * 0.2300000);
    path_1.lineTo(size.width * 0.2537500, size.height * 0.2450000);
    path_1.lineTo(size.width * 0.2325000, size.height * 0.2462500);
    path_1.lineTo(size.width * 0.2325000, size.height * 0.2562500);
    path_1.lineTo(size.width * 0.2075000, size.height * 0.2900000);
    path_1.lineTo(size.width * 0.2050000, size.height * 0.3087500);
    path_1.lineTo(size.width * 0.1975000, size.height * 0.2812500);
    path_1.lineTo(size.width * 0.2050000, size.height * 0.2437500);
    path_1.lineTo(size.width * 0.2000000, size.height * 0.2337500);
    path_1.lineTo(size.width * 0.1862500, size.height * 0.2462500);
    path_1.lineTo(size.width * 0.1550000, size.height * 0.2537500);
    path_1.lineTo(size.width * 0.1025000, size.height * 0.2550000);
    path_1.lineTo(size.width * 0.0312500, size.height * 0.2712500);
    path_1.lineTo(size.width * -0.0100000, size.height * 0.1987500);
    path_1.lineTo(size.width * 0.4025000, size.height * 0.1225000);
    path_1.lineTo(size.width * 0.9350000, size.height * 0.0300000);
    path_1.lineTo(size.width * 1.0312500, size.height * 0.4625000);
    path_1.lineTo(size.width * 1.0262500, size.height * 0.8250000);
    path_1.lineTo(size.width * 0.8087500, size.height * 0.9287500);
    path_1.lineTo(size.width * 0.2487500, size.height * 0.9537500);
    path_1.lineTo(size.width * -0.0262500, size.height * 0.9375000);
    path_1.lineTo(size.width * -0.0162500, size.height * 0.5375000);
    path_1.lineTo(size.width * -0.0637500, size.height * 0.2600000);
    path_1.lineTo(size.width * -0.0025000, size.height * 0.2106250);
    path_1.lineTo(size.width * 0.0312500, size.height * 0.2712500);
    path_1.lineTo(size.width * 0.0237500, size.height * 0.2837500);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);
  }

  _layer2(Canvas canvas, Size size) {
    final paint_fill_1 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: colorsMain3,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_1 = Path();
    path_1.moveTo(size.width * 1.0200000, size.height * 0.5434500);
    path_1.quadraticBezierTo(
      size.width * 0.9807375,
      size.height * 0.5642375,
      size.width * 0.9614750,
      size.height * 0.5766250,
    );
    path_1.cubicTo(
      size.width * 0.9360250,
      size.height * 0.5899500,
      size.width * 0.8961750,
      size.height * 0.5948750,
      size.width * 0.8732250,
      size.height * 0.6021500,
    );
    path_1.quadraticBezierTo(
      size.width * 0.8471875,
      size.height * 0.6099625,
      size.width * 0.8054000,
      size.height * 0.6398250,
    );
    path_1.quadraticBezierTo(
      size.width * 0.8420125,
      size.height * 0.6631250,
      size.width * 0.8621000,
      size.height * 0.6893625,
    );
    path_1.cubicTo(
      size.width * 0.8763500,
      size.height * 0.7100375,
      size.width * 0.8848250,
      size.height * 0.7378375,
      size.width * 0.8823250,
      size.height * 0.7734750,
    );
    path_1.quadraticBezierTo(
      size.width * 0.8762375,
      size.height * 0.8224875,
      size.width * 0.8325875,
      size.height * 0.8435750,
    );
    path_1.lineTo(size.width * 1.0862500, size.height * 0.8175000);
    path_1.lineTo(size.width * 1.0962500, size.height * 0.6387500);
    path_1.lineTo(size.width * 1.0500000, size.height * 0.5600000);
    path_1.lineTo(size.width * 1.0200000, size.height * 0.5434500);
    path_1.close();
    canvas.drawPath(path_1, paint_fill_1);

    canvas.save();
    canvas.clipPath(path_1);
    _layer2_1(canvas, size);
    _layer2_2(canvas, size);
    canvas.restore();
    final borderPaint =
        Paint()
          ..color = const Color.fromARGB(255, 139, 69, 19) // Border color
          ..style = PaintingStyle.stroke
          ..strokeWidth = 3.0;
    canvas.drawPath(path_1, borderPaint);
  }

  _layer2_1(Canvas canvas, Size size) {
    final paint_fill_1 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color1_3,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_1 = Path();
    path_1.moveTo(size.width * 1.0050000, size.height * 0.4850000);
    path_1.quadraticBezierTo(
      size.width * 0.9957875,
      size.height * 0.5275000,
      size.width * 0.9837500,
      size.height * 0.5581250,
    );
    path_1.cubicTo(
      size.width * 0.9739125,
      size.height * 0.5790625,
      size.width * 0.9586000,
      size.height * 0.5892250,
      size.width * 0.9487500,
      size.height * 0.6262500,
    );
    path_1.cubicTo(
      size.width * 0.9428125,
      size.height * 0.6617250,
      size.width * 0.9479750,
      size.height * 0.6793750,
      size.width * 0.9362500,
      size.height * 0.7181250,
    );
    path_1.cubicTo(
      size.width * 0.9245375,
      size.height * 0.7514125,
      size.width * 0.9261000,
      size.height * 0.7842250,
      size.width * 0.9181250,
      size.height * 0.8112500,
    );
    path_1.quadraticBezierTo(
      size.width * 0.9073500,
      size.height * 0.8409375,
      size.width * 0.8712500,
      size.height * 0.9231250,
    );
    path_1.lineTo(size.width * 1.0387500, size.height * 0.8912500);
    path_1.lineTo(size.width * 1.1812500, size.height * 0.7825000);
    path_1.lineTo(size.width * 1.2212500, size.height * 0.6150000);
    path_1.lineTo(size.width * 1.1537500, size.height * 0.4825000);
    path_1.lineTo(size.width * 1.0050000, size.height * 0.4850000);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);
  }

  _layer2_2(Canvas canvas, Size size) {
    final paint_fill_1 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color2_3,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_1 = Path();
    path_1.moveTo(size.width * 1.0350000, size.height * 0.5362500);
    path_1.lineTo(size.width * 1.0287500, size.height * 0.5487500);
    path_1.lineTo(size.width * 1.0012500, size.height * 0.5612500);
    path_1.lineTo(size.width * 0.9687500, size.height * 0.5825000);
    path_1.lineTo(size.width * 0.9387500, size.height * 0.6062500);
    path_1.lineTo(size.width * 0.9200000, size.height * 0.6012500);
    path_1.lineTo(size.width * 0.8750000, size.height * 0.6137500);
    path_1.lineTo(size.width * 0.8350000, size.height * 0.6337500);
    path_1.lineTo(size.width * 0.8475000, size.height * 0.6537500);
    path_1.lineTo(size.width * 0.8675000, size.height * 0.6625000);
    path_1.lineTo(size.width * 0.8937500, size.height * 0.6687500);
    path_1.lineTo(size.width * 0.8737500, size.height * 0.6712500);
    path_1.lineTo(size.width * 0.8837500, size.height * 0.6925000);
    path_1.lineTo(size.width * 0.9375000, size.height * 0.6800000);
    path_1.lineTo(size.width * 0.9000000, size.height * 0.6950000);
    path_1.lineTo(size.width * 0.8875000, size.height * 0.7000000);
    path_1.lineTo(size.width * 0.8912500, size.height * 0.7225000);
    path_1.lineTo(size.width * 0.9050000, size.height * 0.7462500);
    path_1.lineTo(size.width * 0.8937500, size.height * 0.7800000);
    path_1.lineTo(size.width * 0.8862500, size.height * 0.8062500);
    path_1.lineTo(size.width * 0.8712500, size.height * 0.8312500);
    path_1.lineTo(size.width * 0.8600000, size.height * 0.8550000);
    path_1.lineTo(size.width * 0.8275000, size.height * 0.8637500);
    path_1.lineTo(size.width * 0.6537500, size.height * 0.8225000);
    path_1.lineTo(size.width * 0.7550000, size.height * 0.6575000);
    path_1.lineTo(size.width * 0.7850000, size.height * 0.5575000);
    path_1.lineTo(size.width * 0.9850000, size.height * 0.4925000);
    path_1.lineTo(size.width * 1.0825000, size.height * 0.5050000);
    path_1.lineTo(size.width * 1.0350000, size.height * 0.5362500);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);
  }

  @override
  bool shouldRepaint(covariant PopUpPainter oldDelegate) {
    return false;
  }
}
