import 'package:flutter/material.dart';
import 'package:general_knowledge_app/painters/colors.dart';

class SelectionPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: colorsMain,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9613333, size.height * 0.1582979);
    path_0.quadraticBezierTo(
      size.width * 0.9772778,
      size.height * 0.1474468,
      size.width * 0.9873333,
      size.height * 0.1744681,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9958333,
      size.height * 0.2027660,
      size.width * 0.9973333,
      size.height * 0.2229787,
    );
    path_0.quadraticBezierTo(
      size.width,
      size.height * 0.4042553,
      size.width * 0.9831111,
      size.height * 0.6008511,
    );
    path_0.cubicTo(
      size.width * 0.9643333,
      size.height * 0.7727660,
      size.width * 0.9614444,
      size.height * 0.8612766,
      size.width * 0.9462222,
      size.height * 0.9242553,
    );
    path_0.cubicTo(
      size.width * 0.9342778,
      size.height * 0.9853191,
      size.width * 0.9017222,
      size.height * 0.9372340,
      size.width * 0.8824444,
      size.height * 0.9336170,
    );
    path_0.quadraticBezierTo(
      size.width * 0.8407778,
      size.height * 0.9236170,
      size.width * 0.8117778,
      size.height * 0.9106383,
    );
    path_0.lineTo(size.width * 0.8111111, size.height * 0.8578723);
    path_0.lineTo(size.width * 0.8033333, size.height * 0.9029787);
    path_0.lineTo(size.width * 0.8066667, size.height * 0.7838298);
    path_0.lineTo(size.width * 0.7977778, size.height * 0.9072340);
    path_0.quadraticBezierTo(
      size.width * 0.6799444,
      size.height * 0.8076596,
      size.width * 0.5855556,
      size.height * 0.8085106,
    );
    path_0.quadraticBezierTo(
      size.width * 0.4908889,
      size.height * 0.8063830,
      size.width * 0.4237778,
      size.height * 0.8748936,
    );
    path_0.lineTo(size.width * 0.4155556, size.height * 0.8221277);
    path_0.lineTo(size.width * 0.4144444, size.height * 0.8731915);
    path_0.lineTo(size.width * 0.4088889, size.height * 0.7880851);
    path_0.lineTo(size.width * 0.4077778, size.height * 0.8817021);
    path_0.quadraticBezierTo(
      size.width * 0.2587778,
      size.height * 0.9753191,
      size.width * 0.2091111,
      size.height * 0.9668085,
    );
    path_0.cubicTo(
      size.width * 0.1249444,
      size.height * 0.9761702,
      size.width * 0.0872778,
      size.height * 1.0068085,
      size.width * 0.0528889,
      size.height * 0.9600000,
    );
    path_0.cubicTo(
      size.width * 0.0407778,
      size.height * 0.9489362,
      size.width * 0.0294444,
      size.height * 0.6800000,
      size.width * 0.0160000,
      size.height * 0.5242553,
    );
    path_0.cubicTo(
      size.width * 0.0091667,
      size.height * 0.4255319,
      size.width * -0.0018333,
      size.height * 0.3234043,
      size.width * 0.0055556,
      size.height * 0.2076596,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0136667,
      size.height * 0.1463830,
      size.width * 0.0531111,
      size.height * 0.1225532,
    );
    path_0.lineTo(size.width * 0.0515556, size.height * 0.2280851);
    path_0.lineTo(size.width * 0.1144444, size.height * 0.2042553);
    path_0.lineTo(size.width * 0.1275556, size.height * 0.2791489);
    path_0.lineTo(size.width * 0.1204444, size.height * 0.2008511);
    path_0.quadraticBezierTo(
      size.width * 0.2138333,
      size.height * 0.1744681,
      size.width * 0.2420000,
      size.height * 0.1702128,
    );
    path_0.quadraticBezierTo(
      size.width * 0.3074444,
      size.height * 0.1491489,
      size.width * 0.3917778,
      size.height * 0.0825532,
    );
    path_0.lineTo(size.width * 0.3926667, size.height * 0.1489362);
    path_0.lineTo(size.width * 0.3971111, size.height * 0.0748936);
    path_0.lineTo(size.width * 0.4026667, size.height * 0.2485106);
    path_0.lineTo(size.width * 0.4033333, size.height * 0.0536170);
    path_0.quadraticBezierTo(
      size.width * 0.4818333,
      size.height * 0.0319149,
      size.width * 0.5462222,
      size.height * 0.0110638,
    );
    path_0.cubicTo(
      size.width * 0.6284444,
      size.height * 0.0014894,
      size.width * 0.6911111,
      size.height * 0.0317021,
      size.width * 0.7560000,
      size.height * 0.1021277,
    );
    path_0.quadraticBezierTo(
      size.width * 0.8251111,
      size.height * 0.1682979,
      size.width * 0.9568889,
      size.height * 0.2204255,
    );
    path_0.lineTo(size.width * 0.9613333, size.height * 0.1582979);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    canvas.save();
    canvas.clipPath(path_0);

    _drawDuneLayer1_1(canvas, size);
    _drawDuneLayer1_2(canvas, size);
    _drawDuneLayer1_3(canvas, size);

    _drawDuneLayer2(canvas, size);

    canvas.restore();
  }

  void _drawDuneLayer1_1(Canvas canvas, Size size) {
    Paint paint_fill_1 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color1_1,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.2549667, size.height * 0.3542979);
    path_1.cubicTo(
      size.width * 0.1829083,
      size.height * 0.3897234,
      size.width * 0.1745333,
      size.height * 0.3141702,
      size.width * 0.1588889,
      size.height * 0.4015319,
    );
    path_1.cubicTo(
      size.width * 0.1359667,
      size.height * 0.4823404,
      size.width * 0.1236222,
      size.height * 0.4037021,
      size.width * 0.0977333,
      size.height * 0.4481277,
    );
    path_1.quadraticBezierTo(
      size.width * 0.0729333,
      size.height * 0.4570213,
      size.width * 0.0446889,
      size.height * 0.4836596,
    );
    path_1.quadraticBezierTo(
      size.width * 0.0459444,
      size.height * 0.5434894,
      size.width * 0.0458667,
      size.height * 0.6042553,
    );
    path_1.quadraticBezierTo(
      size.width * 0.0434556,
      size.height * 0.7117021,
      size.width * 0.0377000,
      size.height * 0.8002979,
    );
    path_1.quadraticBezierTo(
      size.width * 0.0559778,
      size.height * 0.8197447,
      size.width * 0.0744667,
      size.height * 0.8072340,
    );
    path_1.cubicTo(
      size.width * 0.0962667,
      size.height * 0.8030213,
      size.width * 0.0937333,
      size.height * 0.7375319,
      size.width * 0.1155333,
      size.height * 0.7446809,
    );
    path_1.cubicTo(
      size.width * 0.1447000,
      size.height * 0.7276170,
      size.width * 0.1412667,
      size.height * 0.7141702,
      size.width * 0.1696889,
      size.height * 0.7420000,
    );
    path_1.cubicTo(
      size.width * 0.1877333,
      size.height * 0.7871915,
      size.width * 0.1985444,
      size.height * 0.8148511,
      size.width * 0.2180778,
      size.height * 0.7745106,
    );
    path_1.quadraticBezierTo(
      size.width * 0.2410222,
      size.height * 0.7282553,
      size.width * 0.2629667,
      size.height * 0.7148936,
    );
    path_1.quadraticBezierTo(
      size.width * 0.2786222,
      size.height * 0.7064681,
      size.width * 0.3007222,
      size.height * 0.6808511,
    );
    path_1.cubicTo(
      size.width * 0.3268000,
      size.height * 0.6701702,
      size.width * 0.3567556,
      size.height * 0.6426489,
      size.width * 0.3754333,
      size.height * 0.6299149,
    );
    path_1.cubicTo(
      size.width * 0.4211667,
      size.height * 0.5636596,
      size.width * 0.4696667,
      size.height * 0.6300426,
      size.width * 0.5010778,
      size.height * 0.6300851,
    );
    path_1.cubicTo(
      size.width * 0.5349556,
      size.height * 0.6514043,
      size.width * 0.5654667,
      size.height * 0.6041702,
      size.width * 0.6246444,
      size.height * 0.6183404,
    );
    path_1.cubicTo(
      size.width * 0.6742333,
      size.height * 0.6678298,
      size.width * 0.7237333,
      size.height * 0.7076596,
      size.width * 0.7418778,
      size.height * 0.6766383,
    );
    path_1.quadraticBezierTo(
      size.width * 0.7898556,
      size.height * 0.6203404,
      size.width * 0.7994444,
      size.height * 0.5787234,
    );
    path_1.lineTo(size.width * 0.7994444, size.height * 0.4936170);
    path_1.lineTo(size.width * 0.8027778, size.height * 0.5617021);
    path_1.quadraticBezierTo(
      size.width * 0.8043111,
      size.height * 0.4617021,
      size.width * 0.8033333,
      size.height * 0.3914894,
    );
    path_1.cubicTo(
      size.width * 0.8008333,
      size.height * 0.3138298,
      size.width * 0.7845889,
      size.height * 0.3574468,
      size.width * 0.7716667,
      size.height * 0.2510638,
    );
    path_1.cubicTo(
      size.width * 0.7457000,
      size.height * 0.2276596,
      size.width * 0.7265333,
      size.height * 0.2585106,
      size.width * 0.6977778,
      size.height * 0.2744681,
    );
    path_1.cubicTo(
      size.width * 0.6505556,
      size.height * 0.2744681,
      size.width * 0.6754222,
      size.height * 0.2340426,
      size.width * 0.6383333,
      size.height * 0.1978723,
    );
    path_1.cubicTo(
      size.width * 0.6184778,
      size.height * 0.1345957,
      size.width * 0.6083333,
      size.height * 0.2606383,
      size.width * 0.5755556,
      size.height * 0.2468085,
    );
    path_1.cubicTo(
      size.width * 0.5315333,
      size.height * 0.2569362,
      size.width * 0.5348667,
      size.height * 0.1106383,
      size.width * 0.4361111,
      size.height * 0.3829787,
    );
    path_1.quadraticBezierTo(
      size.width * 0.4140333,
      size.height * 0.4106383,
      size.width * 0.3788889,
      size.height * 0.4255319,
    );
    path_1.lineTo(size.width * 0.3633333, size.height * -0.7574468);
    path_1.lineTo(size.width * 1.0888889, size.height * -0.8170213);
    path_1.lineTo(size.width * 1.0600000, size.height * 1.9872340);
    path_1.lineTo(size.width * -0.1044444, size.height * 1.9617021);
    path_1.lineTo(size.width * -0.1722222, size.height * -0.5446809);
    path_1.lineTo(size.width * 0.2944444, size.height * -0.8851064);
    path_1.lineTo(size.width * 0.3672222, size.height * -0.3787234);
    path_1.lineTo(size.width * 0.3788889, size.height * 0.4255319);
    path_1.quadraticBezierTo(
      size.width * 0.3479083,
      size.height * 0.4077234,
      size.width * 0.2549667,
      size.height * 0.3542979,
    );
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);
  }

  void _drawDuneLayer1_2(Canvas canvas, Size size) {
    Paint paint_fill_1 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color1_2,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6105556, size.height * 0.0914894);
    path_0.quadraticBezierTo(
      size.width * 0.5704222,
      size.height * 0.0580000,
      size.width * 0.5355556,
      size.height * 0.0893617,
    );
    path_0.cubicTo(
      size.width * 0.5144444,
      size.height * 0.1138298,
      size.width * 0.5082000,
      size.height * 0.1723404,
      size.width * 0.4783333,
      size.height * 0.2340426,
    );
    path_0.cubicTo(
      size.width * 0.4443111,
      size.height * 0.3265957,
      size.width * 0.4037556,
      size.height * 0.3803404,
      size.width * 0.3700000,
      size.height * 0.3468085,
    );
    path_0.quadraticBezierTo(
      size.width * 0.3241667,
      size.height * 0.2845957,
      size.width * 0.2800000,
      size.height * 0.3191489,
    );
    path_0.quadraticBezierTo(
      size.width * 0.3086111,
      size.height * 0.2840426,
      size.width * 0.3077778,
      size.height * 0.2382979,
    );
    path_0.cubicTo(
      size.width * 0.2927778,
      size.height * 0.2074468,
      size.width * 0.2950000,
      size.height * 0.2367234,
      size.width * 0.2722222,
      size.height * 0.2702128,
    );
    path_0.cubicTo(
      size.width * 0.2519444,
      size.height * 0.3175745,
      size.width * 0.2436111,
      size.height * 0.2877872,
      size.width * 0.2111111,
      size.height * 0.2957447,
    );
    path_0.cubicTo(
      size.width * 0.1747222,
      size.height * 0.2914894,
      size.width * 0.1788889,
      size.height * 0.2314043,
      size.width * 0.1577778,
      size.height * 0.3042553,
    );
    path_0.cubicTo(
      size.width * 0.1298889,
      size.height * 0.3915319,
      size.width * 0.1274667,
      size.height * 0.3190213,
      size.width * 0.0925556,
      size.height * 0.4113617,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0559333,
      size.height * 0.3828936,
      size.width * 0.0398889,
      size.height * 0.4457872,
    );
    path_0.lineTo(size.width * 0.0203444, size.height * 0.4087660);
    path_0.lineTo(size.width * 0.0044444, size.height * 0.3148936);
    path_0.quadraticBezierTo(
      size.width * 0.0231111,
      size.height * 0.4374894,
      size.width * 0.0293333,
      size.height * 0.5163404,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0302556,
      size.height * 0.6979574,
      size.width * 0.0211111,
      size.height * 0.8893617,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0282889,
      size.height * 0.8565957,
      size.width * 0.0418444,
      size.height * 0.8494468,
    );
    path_0.cubicTo(
      size.width * 0.0568000,
      size.height * 0.8704681,
      size.width * 0.0577111,
      size.height * 0.8554468,
      size.width * 0.0778778,
      size.height * 0.8650213,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0979111,
      size.height * 0.8707660,
      size.width * 0.1045000,
      size.height * 0.8232340,
    );
    path_0.quadraticBezierTo(
      size.width * 0.1185889,
      size.height * 0.7860426,
      size.width * 0.1477778,
      size.height * 0.7768936,
    );
    path_0.quadraticBezierTo(
      size.width * 0.1783556,
      size.height * 0.8812340,
      size.width * 0.2258556,
      size.height * 0.8606809,
    );
    path_0.lineTo(size.width * 0.2683556, size.height * 0.7720426);
    path_0.lineTo(size.width * 0.2555667, size.height * 0.8589362);
    path_0.quadraticBezierTo(
      size.width * 0.2732111,
      size.height * 0.8689787,
      size.width * 0.3084444,
      size.height * 0.7720851,
    );
    path_0.cubicTo(
      size.width * 0.3355556,
      size.height * 0.6810638,
      size.width * 0.3516222,
      size.height * 0.7391489,
      size.width * 0.3795333,
      size.height * 0.6893617,
    );
    path_0.cubicTo(
      size.width * 0.4091111,
      size.height * 0.6471915,
      size.width * 0.4134667,
      size.height * 0.6228936,
      size.width * 0.4382889,
      size.height * 0.6298298,
    );
    path_0.quadraticBezierTo(
      size.width * 0.4579444,
      size.height * 0.6453191,
      size.width * 0.4788889,
      size.height * 0.6723404,
    );
    path_0.quadraticBezierTo(
      size.width * 0.4416889,
      size.height * 0.6691489,
      size.width * 0.4404778,
      size.height * 0.7465106,
    );
    path_0.cubicTo(
      size.width * 0.4459556,
      size.height * 0.8159574,
      size.width * 0.4331556,
      size.height * 0.7438298,
      size.width * 0.4845556,
      size.height * 0.7356596,
    );
    path_0.cubicTo(
      size.width * 0.5282444,
      size.height * 0.7614043,
      size.width * 0.5435667,
      size.height * 0.6734468,
      size.width * 0.5795000,
      size.height * 0.6664681,
    );
    path_0.quadraticBezierTo(
      size.width * 0.6258000,
      size.height * 0.6743404,
      size.width * 0.6899667,
      size.height * 0.7028511,
    );
    path_0.lineTo(size.width * 0.7544444, size.height * 0.7829787);
    path_0.lineTo(size.width * 0.7166667, size.height * 0.7234043);
    path_0.quadraticBezierTo(
      size.width * 0.7505889,
      size.height * 0.7532340,
      size.width * 0.7844444,
      size.height * 0.6978723,
    );
    path_0.quadraticBezierTo(
      size.width * 0.7983111,
      size.height * 0.6131064,
      size.width * 0.8424444,
      size.height * 0.6571489,
    );
    path_0.lineTo(size.width * 0.8344444, size.height * 0.6978723);
    path_0.lineTo(size.width * 0.8572778, size.height * 0.6482979);
    path_0.lineTo(size.width * 0.8844444, size.height * 0.7148936);
    path_0.lineTo(size.width * 0.8440556, size.height * 0.5788085);
    path_0.quadraticBezierTo(
      size.width * 0.8458889,
      size.height * 0.5718723,
      size.width * 0.8353111,
      size.height * 0.4353191,
    );
    path_0.quadraticBezierTo(
      size.width * 0.8367667,
      size.height * 0.3284681,
      size.width * 0.8538111,
      size.height * 0.2311489,
    );
    path_0.lineTo(size.width * 0.8088889, size.height * 0.2553191);
    path_0.lineTo(size.width * 0.8266667, size.height * 0.2255319);
    path_0.lineTo(size.width * 0.8177778, size.height * 0.1914894);
    path_0.quadraticBezierTo(
      size.width * 0.8110444,
      size.height * 0.1826809,
      size.width * 0.7944444,
      size.height * 0.1829787,
    );
    path_0.cubicTo(
      size.width * 0.7801444,
      size.height * 0.1826809,
      size.width * 0.7779778,
      size.height * 0.1925532,
      size.width * 0.7522222,
      size.height * 0.1957447,
    );
    path_0.quadraticBezierTo(
      size.width * 0.7123778,
      size.height * 0.1817872,
      size.width * 0.6716667,
      size.height * 0.1297872,
    );
    path_0.lineTo(size.width * 0.7211111, size.height * -0.2553191);
    path_0.lineTo(size.width * 0.8877778, size.height * -0.2510638);
    path_0.lineTo(size.width * 0.9922222, size.height * 0.3829787);
    path_0.lineTo(size.width * 0.9344444, size.height * 1.2085106);
    path_0.lineTo(size.width * 0.5700000, size.height * 1.4042553);
    path_0.lineTo(size.width * 0.2033333, size.height * 1.3191489);
    path_0.lineTo(size.width * 0.0366667, size.height * 1.2085106);
    path_0.lineTo(size.width * -0.0400000, size.height * 1.1319149);
    path_0.lineTo(size.width * -0.0444444, size.height * 0.4042553);
    path_0.lineTo(size.width * -0.0200000, size.height * -0.1489362);
    path_0.lineTo(size.width * 0.0711111, size.height * -0.4127660);
    path_0.lineTo(size.width * 0.3444444, size.height * -0.4893617);
    path_0.lineTo(size.width * 0.6422222, size.height * -0.5234043);
    path_0.lineTo(size.width * 0.7433333, size.height * -0.3829787);
    path_0.lineTo(size.width * 0.7200000, size.height * -0.2510638);
    path_0.lineTo(size.width * 0.6711111, size.height * 0.1319149);
    path_0.lineTo(size.width * 0.6105556, size.height * 0.0914894);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_1);
  }

  void _drawDuneLayer1_3(Canvas canvas, Size size) {
    Paint paint_fill_0 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color1_4,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4683333, size.height * 0.0489362);
    path_1.quadraticBezierTo(
      size.width * 0.4241667,
      size.height * 0.0632979,
      size.width * 0.4094444,
      size.height * 0.0680851,
    );
    path_1.lineTo(size.width * 0.4077778, size.height * 0.2404255);
    path_1.lineTo(size.width * 0.3972222, size.height * 0.3404255);
    path_1.lineTo(size.width * 0.3966667, size.height * 0.1489362);
    path_1.lineTo(size.width * 0.3900000, size.height * 0.2170213);
    path_1.lineTo(size.width * 0.3872222, size.height * 0.1042553);
    path_1.quadraticBezierTo(
      size.width * 0.3344444,
      size.height * 0.1382979,
      size.width * 0.2688889,
      size.height * 0.1723404,
    );
    path_1.quadraticBezierTo(
      size.width * 0.2082000,
      size.height * 0.1978723,
      size.width * 0.1266667,
      size.height * 0.2127660,
    );
    path_1.lineTo(size.width * 0.1355556, size.height * 0.3170213);
    path_1.lineTo(size.width * 0.1288889, size.height * 0.3829787);
    path_1.lineTo(size.width * 0.1255556, size.height * 0.3021277);
    path_1.lineTo(size.width * 0.1133333, size.height * 0.2212766);
    path_1.quadraticBezierTo(
      size.width * 0.0636111,
      size.height * 0.2393617,
      size.width * 0.0350000,
      size.height * 0.2468085,
    );
    path_1.quadraticBezierTo(
      size.width * -0.0105556,
      size.height * 0.2531915,
      size.width * 0.0066667,
      size.height * 0.2425532,
    );
    path_1.quadraticBezierTo(
      size.width * 0.0070833,
      size.height * 0.2952128,
      size.width * 0.0072222,
      size.height * 0.3127660,
    );
    path_1.cubicTo(
      size.width * 0.0162556,
      size.height * 0.4750213,
      size.width * 0.0194444,
      size.height * 0.5031915,
      size.width * 0.0255556,
      size.height * 0.5531915,
    );
    path_1.cubicTo(
      size.width * 0.0361111,
      size.height * 0.7297872,
      size.width * 0.0437556,
      size.height * 0.9521277,
      size.width * 0.0683333,
      size.height * 0.9659574,
    );
    path_1.cubicTo(
      size.width * 0.0876389,
      size.height * 0.9648936,
      size.width * 0.0882000,
      size.height * 0.9803404,
      size.width * 0.1200000,
      size.height * 0.9680851,
    );
    path_1.cubicTo(
      size.width * 0.1900000,
      size.height * 0.9590638,
      size.width * 0.2247222,
      size.height * 0.9510638,
      size.width * 0.2733333,
      size.height * 0.9489362,
    );
    path_1.quadraticBezierTo(
      size.width * 0.3083333,
      size.height * 0.9282128,
      size.width * 0.4005556,
      size.height * 0.8680851,
    );
    path_1.lineTo(size.width * 0.4022222, size.height * 0.7957447);
    path_1.lineTo(size.width * 0.3955556, size.height * 0.7021277);
    path_1.lineTo(size.width * 0.4300000, size.height * 0.8510638);
    path_1.quadraticBezierTo(
      size.width * 0.4833333,
      size.height * 0.8048085,
      size.width * 0.5361111,
      size.height * 0.8000000,
    );
    path_1.cubicTo(
      size.width * 0.5869444,
      size.height * 0.7888511,
      size.width * 0.6532000,
      size.height * 0.7936170,
      size.width * 0.7011111,
      size.height * 0.8170213,
    );
    path_1.quadraticBezierTo(
      size.width * 0.7241667,
      size.height * 0.8361702,
      size.width * 0.7950000,
      size.height * 0.8872340,
    );
    path_1.lineTo(size.width * 0.8077778, size.height * 0.7574468);
    path_1.lineTo(size.width * 0.8100000, size.height * 0.7106383);
    path_1.lineTo(size.width * 0.8088889, size.height * 0.8382979);
    path_1.lineTo(size.width * 0.8166667, size.height * 0.8127660);
    path_1.lineTo(size.width * 0.8166667, size.height * 0.8936170);
    path_1.quadraticBezierTo(
      size.width * 0.8711111,
      size.height * 0.9255319,
      size.width * 0.9011111,
      size.height * 0.9106383,
    );
    path_1.cubicTo(
      size.width * 0.9188889,
      size.height * 0.8212766,
      size.width * 0.9211111,
      size.height * 0.6420426,
      size.width * 0.9316667,
      size.height * 0.5553191,
    );
    path_1.quadraticBezierTo(
      size.width * 0.9358333,
      size.height * 0.4250213,
      size.width * 0.9488889,
      size.height * 0.2404255,
    );
    path_1.quadraticBezierTo(
      size.width * 0.8697222,
      size.height * 0.1994894,
      size.width * 0.8388889,
      size.height * 0.1829787,
    );
    path_1.cubicTo(
      size.width * 0.8050000,
      size.height * 0.1601277,
      size.width * 0.7219444,
      size.height * 0.0861702,
      size.width * 0.6844444,
      size.height * 0.0553191,
    );
    path_1.quadraticBezierTo(
      size.width * 0.6491667,
      size.height * 0.0356596,
      size.width * 0.5511111,
      size.height * 0.0234043,
    );
    path_1.lineTo(size.width * 0.5522222, size.height * -0.1617021);
    path_1.lineTo(size.width * 0.8444444, size.height * -0.3063830);
    path_1.lineTo(size.width * 1.0122222, size.height * -0.0170213);
    path_1.lineTo(size.width * 1.0022222, size.height * 0.6765957);
    path_1.lineTo(size.width * 0.8455556, size.height * 1.4978723);
    path_1.lineTo(size.width * 0.2800000, size.height * 1.2553191);
    path_1.lineTo(size.width * -0.0455556, size.height * 1.1787234);
    path_1.lineTo(size.width * -0.0500000, size.height * 0.0297872);
    path_1.lineTo(size.width * 0.0100000, size.height * -0.3617021);
    path_1.lineTo(size.width * 0.2611111, size.height * -0.4255319);
    path_1.lineTo(size.width * 0.4788889, size.height * -0.3702128);
    path_1.lineTo(size.width * 0.5522222, size.height * -0.1659574);
    path_1.lineTo(size.width * 0.5505556, size.height * 0.0255319);
    path_1.quadraticBezierTo(
      size.width * 0.5300000,
      size.height * 0.0313830,
      size.width * 0.4683333,
      size.height * 0.0489362,
    );
    path_1.close();

    canvas.drawPath(path_1, paint_fill_0);
  }

  void _drawDuneLayer2(Canvas canvas, Size size) {
    // Layer 1 Copy

    Paint paint_fill_1 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: colorsMain,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.9574000, size.height * 0.2071915);
    path_1.lineTo(size.width * 0.9464444, size.height * 0.3676596);
    path_1.quadraticBezierTo(
      size.width * 0.9482111,
      size.height * 0.3555319,
      size.width * 0.9572444,
      size.height * 0.3579574,
    );
    path_1.quadraticBezierTo(
      size.width * 0.9672667,
      size.height * 0.3893617,
      size.width * 0.9720000,
      size.height * 0.4059574,
    );
    path_1.lineTo(size.width * 0.9535889, size.height * 0.3853191);
    path_1.quadraticBezierTo(
      size.width * 0.9474000,
      size.height * 0.3990213,
      size.width * 0.9453333,
      size.height * 0.4035745,
    );
    path_1.cubicTo(
      size.width * 0.9420444,
      size.height * 0.4680851,
      size.width * 0.9424333,
      size.height * 0.4806809,
      size.width * 0.9397778,
      size.height * 0.5548936,
    );
    path_1.quadraticBezierTo(
      size.width * 0.9363667,
      size.height * 0.6345532,
      size.width * 0.9286667,
      size.height * 0.6697872,
    );
    path_1.lineTo(size.width * 0.9431111, size.height * 0.7080851);
    path_1.lineTo(size.width * 0.9331111, size.height * 0.7014043);
    path_1.lineTo(size.width * 0.9388222, size.height * 0.7506383);
    path_1.lineTo(size.width * 0.9264444, size.height * 0.6922979);
    path_1.lineTo(size.width * 0.9118444, size.height * 0.8515319);
    path_1.quadraticBezierTo(
      size.width * 0.9195111,
      size.height * 0.8351915,
      size.width * 0.9307222,
      size.height * 0.8637021,
    );
    path_1.quadraticBezierTo(
      size.width * 0.9418111,
      size.height * 0.8977021,
      size.width * 0.9421444,
      size.height * 0.9390638,
    );
    path_1.lineTo(size.width * 0.9342222, size.height * 1.0570213);
    path_1.lineTo(size.width * 1.1575556, size.height * 1.3361702);
    path_1.lineTo(size.width * 1.2257778, size.height * -0.9480851);
    path_1.lineTo(size.width * 1.0404444, size.height * -1.3787234);
    path_1.lineTo(size.width * 0.7222222, size.height * -1.3089362);
    path_1.lineTo(size.width * 0.6600000, size.height * -1.1438298);
    path_1.lineTo(size.width * 0.1302222, size.height * -0.9395745);
    path_1.lineTo(size.width * -0.0557778, size.height * 0.3208511);
    path_1.lineTo(size.width * -0.0391111, size.height * 0.0442553);
    path_1.lineTo(size.width * -0.0146667, size.height * 0.1293617);
    path_1.lineTo(size.width * -0.0075556, size.height * 0.0578723);
    path_1.lineTo(size.width * 0.0462222, size.height * 0.0978723);
    path_1.quadraticBezierTo(
      size.width * -0.0006667,
      size.height * 0.1819149,
      size.width * 0.0088889,
      size.height * 0.2331915,
    );
    path_1.cubicTo(
      size.width * 0.0154444,
      size.height * 0.2689362,
      size.width * 0.0307333,
      size.height * 0.2314468,
      size.width * 0.0564667,
      size.height * 0.2264255,
    );
    path_1.quadraticBezierTo(
      size.width * 0.1383444,
      size.height * 0.1854468,
      size.width * 0.2811111,
      size.height * 0.0510638,
    );
    path_1.lineTo(size.width * 0.6031111, size.height * -0.0238298);
    path_1.lineTo(size.width * 0.8531111, size.height * -0.1302128);
    path_1.lineTo(size.width * 0.9297778, size.height * -0.0408511);

    canvas.drawPath(path_1, paint_fill_1);
    canvas.save();
    canvas.clipPath(path_1);

    _drawDuneLayer2_1(canvas, size);
    _drawDuneLayer2_2(canvas, size);
    _drawDuneLayer2_3(canvas, size);

    canvas.restore();
  }

  void _drawDuneLayer2_1(Canvas canvas, Size size) {
    // Layer 1 Copy

    Paint paint_fill_1 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color1_2,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.9733333, size.height * 0.1446809);
    path_1.lineTo(size.width * 0.9635000, size.height * 0.2917872);
    path_1.quadraticBezierTo(
      size.width * 0.9696556,
      size.height * 0.2965106,
      size.width * 0.9814222,
      size.height * 0.3611489,
    );
    path_1.quadraticBezierTo(
      size.width * 0.9813111,
      size.height * 0.4142553,
      size.width * 0.9822222,
      size.height * 0.4425532,
    );
    path_1.lineTo(size.width * 0.9603333, size.height * 0.4249362);
    path_1.quadraticBezierTo(
      size.width * 0.9587222,
      size.height * 0.4774043,
      size.width * 0.9590333,
      size.height * 0.5563404,
    );
    path_1.quadraticBezierTo(
      size.width * 0.9559444,
      size.height * 0.5983830,
      size.width * 0.9479333,
      size.height * 0.6565106,
    );
    path_1.lineTo(size.width * 0.9577778, size.height * 0.7276596);
    path_1.lineTo(size.width * 0.9466667, size.height * 0.7234043);
    path_1.lineTo(size.width * 0.9466667, size.height * 0.8042553);
    path_1.lineTo(size.width * 0.9344444, size.height * 0.7659574);
    path_1.quadraticBezierTo(
      size.width * 0.9324333,
      size.height * 0.8185957,
      size.width * 0.9317556,
      size.height * 0.8717447,
    );
    path_1.quadraticBezierTo(
      size.width * 0.9246222,
      size.height * 0.9512766,
      size.width * 0.9184333,
      size.height * 1.0248936,
    );
    path_1.lineTo(size.width * 0.9355556, size.height * 1.3148936);
    path_1.lineTo(size.width * 1.0288889, size.height * 1.4723404);
    path_1.lineTo(size.width * 1.1088889, size.height * 0.9191489);
    path_1.lineTo(size.width * 1.0944444, size.height * -0.0340426);
    path_1.lineTo(size.width * 0.8522222, size.height * -0.7446809);
    path_1.lineTo(size.width * -0.0688889, size.height * -0.9702128);
    path_1.lineTo(size.width * 0.0396889, size.height * -0.0477447);
    path_1.lineTo(size.width * 0.0484111, size.height * -0.0173617);
    path_1.lineTo(size.width * 0.1014333, size.height * -0.0008511);
    path_1.lineTo(size.width * 0.1696556, size.height * 0.0186809);
    path_1.lineTo(size.width * 0.1223778, size.height * 0.1393617);
    path_1.lineTo(size.width * 0.1064333, size.height * 0.2636596);
    path_1.lineTo(size.width * 0.0806111, size.height * 0.3688936);
    path_1.lineTo(size.width * -0.0155556, size.height * 0.4340426);
    path_1.lineTo(size.width * -0.0311111, size.height * 0.1063830);
    path_1.lineTo(size.width * -0.0100000, size.height * -0.2382979);

    canvas.drawPath(path_1, paint_fill_1);

    canvas.drawPath(path_1, paint_fill_1);
  }

  void _drawDuneLayer2_2(Canvas canvas, Size size) {
    // Layer 1 Copy

    Paint paint_fill_1 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color2_6,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.0333333, size.height * -0.1617021);
    path_1.lineTo(size.width * -0.1733333, size.height * 0.1872340);
    path_1.lineTo(size.width * 0.0400000, size.height * 0.7617021);
    path_1.lineTo(size.width * 0.2111111, size.height * 0.3276596);
    path_1.lineTo(size.width * 0.1322222, size.height * -0.3234043);
    path_1.lineTo(size.width * 0.0333333, size.height * -0.1617021);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);
  }

  void _drawDuneLayer2_3(Canvas canvas, Size size) {
    // Layer 1 Copy

    Paint paint_fill_1 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.white],
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.9633111, size.height * 0.1787234);
    path_1.lineTo(size.width * 0.9514667, size.height * 0.3377021);
    path_1.quadraticBezierTo(
      size.width * 0.9528333,
      size.height * 0.3407660,
      size.width * 0.9622222,
      size.height * 0.3446383,
    );
    path_1.quadraticBezierTo(
      size.width * 0.9719778,
      size.height * 0.3762979,
      size.width * 0.9737000,
      size.height * 0.3971489,
    );
    path_1.lineTo(size.width * 0.9788889, size.height * 0.4340426);
    path_1.lineTo(size.width * 0.9533333, size.height * 0.4098723);
    path_1.lineTo(size.width * 0.9477778, size.height * 0.4510638);
    path_1.quadraticBezierTo(
      size.width * 0.9461222,
      size.height * 0.4986809,
      size.width * 0.9448222,
      size.height * 0.5516170,
    );
    path_1.quadraticBezierTo(
      size.width * 0.9411111,
      size.height * 0.6010638,
      size.width * 0.9344333,
      size.height * 0.6581702,
    );
    path_1.lineTo(size.width * 0.9507444, size.height * 0.7148936);
    path_1.lineTo(size.width * 0.9411111, size.height * 0.7319149);
    path_1.lineTo(size.width * 0.9411111, size.height * 0.7787234);
    path_1.lineTo(size.width * 0.9277778, size.height * 0.7234043);
    path_1.lineTo(size.width * 0.9103333, size.height * 0.9110213);
    path_1.lineTo(size.width * 0.7788889, size.height * 1.0425532);
    path_1.lineTo(size.width * 0.7133333, size.height * 0.5148936);
    path_1.lineTo(size.width * 0.8055556, size.height * -0.0170213);
    path_1.lineTo(size.width * 0.9744444, size.height * -0.1276596);
    path_1.lineTo(size.width * 0.9766667, size.height * -0.1361702);
    path_1.lineTo(size.width * 0.9633111, size.height * 0.1787234);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
