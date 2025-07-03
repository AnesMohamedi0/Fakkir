import 'package:flutter/material.dart';
import 'package:general_knowledge_app/painters/colors.dart';

class PlayMapPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1 Copy

    Paint paint_fill_0 =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: colorsMain,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9606667, size.height * 0.0020829);
    path_0.cubicTo(
      size.width * 0.7052833,
      size.height * 0.0061366,
      size.width * 0.6981917,
      size.height * 0.0075659,
      size.width * 0.6201500,
      size.height * 0.0074878,
    );
    path_0.cubicTo(
      size.width * 0.5324667,
      size.height * 0.0054683,
      size.width * 0.4021500,
      size.height * 0.0115951,
      size.width * 0.2996667,
      size.height * 0.0040293,
    );
    path_0.cubicTo(
      size.width * 0.2031667,
      size.height * -0.0001122,
      size.width * -0.0133833,
      size.height * -0.0079366,
      size.width * -0.0267833,
      size.height * -0.0059415,
    );
    path_0.cubicTo(
      size.width * -0.0377500,
      size.height * -0.0008537,
      size.width * -0.0287500,
      size.height * 0.0139805,
      size.width * -0.0283750,
      size.height * 0.0294537,
    );
    path_0.quadraticBezierTo(
      size.width * -0.0231083,
      size.height * 0.0510390,
      size.width * -0.0068667,
      size.height * 0.0506439,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0085667,
      size.height * 0.0484829,
      size.width * 0.0190750,
      size.height * 0.0488098,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0320583,
      size.height * 0.0509707,
      size.width * 0.0423500,
      size.height * 0.0532585,
    );
    path_0.lineTo(size.width * 0.0105750, size.height * 0.0522146);
    path_0.lineTo(size.width * -0.0050833, size.height * 0.0582341);
    path_0.quadraticBezierTo(
      size.width * -0.0147333,
      size.height * 0.0751415,
      size.width * -0.0105917,
      size.height * 0.0929463,
    );
    path_0.cubicTo(
      size.width * -0.0069000,
      size.height * 0.1203805,
      size.width * -0.0088750,
      size.height * 0.1349756,
      size.width * -0.0091000,
      size.height * 0.1501610,
    );
    path_0.quadraticBezierTo(
      size.width * -0.0058417,
      size.height * 0.1639073,
      size.width * -0.0056500,
      size.height * 0.1872780,
    );
    path_0.lineTo(size.width * 0.0110250, size.height * 0.1737171);
    path_0.quadraticBezierTo(
      size.width * 0.0010917,
      size.height * 0.1822976,
      size.width * 0.0048917,
      size.height * 0.1904780,
    );
    path_0.cubicTo(
      size.width * 0.0027667,
      size.height * 0.2011512,
      size.width * -0.0010667,
      size.height * 0.2142683,
      size.width * -0.0025250,
      size.height * 0.2256585,
    );
    path_0.quadraticBezierTo(
      size.width * -0.0049833,
      size.height * 0.2416390,
      size.width * -0.0005917,
      size.height * 0.2742049,
    );
    path_0.lineTo(size.width * 0.0191500, size.height * 0.2695561);
    path_0.quadraticBezierTo(
      size.width * -0.0045000,
      size.height * 0.2838000,
      size.width * 0.0018667,
      size.height * 0.2974195,
    );
    path_0.cubicTo(
      size.width * 0.0033250,
      size.height * 0.3217707,
      size.width * 0.0071583,
      size.height * 0.3272293,
      size.width * 0.0044750,
      size.height * 0.3475902,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0178000,
      size.height * 0.3525122,
      size.width * 0.0246250,
      size.height * 0.3564780,
    );
    path_0.lineTo(size.width * 0.0483917, size.height * 0.3716927);
    path_0.lineTo(size.width * 0.0092250, size.height * 0.3546195);
    path_0.quadraticBezierTo(
      size.width * 0.0112583,
      size.height * 0.3918683,
      size.width * 0.0096500,
      size.height * 0.4223463,
    );
    path_0.cubicTo(
      size.width * 0.0109000,
      size.height * 0.4721707,
      size.width * 0.0123417,
      size.height * 0.4639902,
      size.width * 0.0263833,
      size.height * 0.4745707,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0339333,
      size.height * 0.4888780,
      size.width * 0.0533750,
      size.height * 0.5064976,
    );
    path_0.lineTo(size.width * 0.0137583, size.height * 0.4781707);
    path_0.quadraticBezierTo(
      size.width * 0.0120417,
      size.height * 0.5244585,
      size.width * 0.0117833,
      size.height * 0.5423756,
    );
    path_0.cubicTo(
      size.width * 0.0121833,
      size.height * 0.5929415,
      size.width * 0.0124000,
      size.height * 0.6072244,
      size.width * 0.0122667,
      size.height * 0.6256000,
    );
    path_0.cubicTo(
      size.width * 0.0072000,
      size.height * 0.6639415,
      size.width * 0.0202000,
      size.height * 0.6586829,
      size.width * 0.0298167,
      size.height * 0.6726732,
    );
    path_0.cubicTo(
      size.width * 0.0385917,
      size.height * 0.6926488,
      size.width * 0.0461750,
      size.height * 0.7051122,
      size.width * 0.0573083,
      size.height * 0.7125366,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0351250,
      size.height * 0.6994976,
      size.width * 0.0158833,
      size.height * 0.6720537,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0178917,
      size.height * 0.7247073,
      size.width * 0.0147500,
      size.height * 0.7597756,
    );
    path_0.cubicTo(
      size.width * 0.0059833,
      size.height * 0.7952780,
      size.width * 0.0135083,
      size.height * 0.8033805,
      size.width * 0.0248833,
      size.height * 0.8178780,
    );
    path_0.cubicTo(
      size.width * 0.0040333,
      size.height * 0.8055366,
      size.width * 0.0115167,
      size.height * 0.8173122,
      size.width * 0.0142417,
      size.height * 0.8523463,
    );
    path_0.cubicTo(
      size.width * 0.0073667,
      size.height * 0.8755463,
      size.width * 0.0015083,
      size.height * 0.8791122,
      size.width * 0.0036917,
      size.height * 0.8950439,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0098417,
      size.height * 0.9118732,
      size.width * 0.0003667,
      size.height * 0.9147512,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0021333,
      size.height * 0.9291854,
      size.width * 0.0220417,
      size.height * 0.9403854,
    );
    path_0.cubicTo(
      size.width * 0.0073833,
      size.height * 0.9360146,
      size.width * 0.0016167,
      size.height * 0.9271024,
      size.width * 0.0016333,
      size.height * 0.9363756,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0016583,
      size.height * 0.9551854,
      size.width * -0.0226167,
      size.height * 0.9944683,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0294583,
      size.height * 0.9869610,
      size.width * 0.1218000,
      size.height * 0.9828000,
    );
    path_0.quadraticBezierTo(
      size.width * 0.2482250,
      size.height * 0.9944585,
      size.width * 0.2787833,
      size.height * 0.9867317,
    );
    path_0.lineTo(size.width * 0.2625333, size.height * 0.9623317);
    path_0.lineTo(size.width * 0.2924500, size.height * 0.9907463);
    path_0.quadraticBezierTo(
      size.width * 0.3841250,
      size.height * 0.9881122,
      size.width * 0.4469583,
      size.height * 0.9900341,
    );
    path_0.quadraticBezierTo(
      size.width * 0.5200417,
      size.height * 0.9928195,
      size.width * 0.5836417,
      size.height * 0.9896976,
    );
    path_0.lineTo(size.width * 0.5649083, size.height * 0.9523561);
    path_0.lineTo(size.width * 0.5931000, size.height * 0.9732780);
    path_0.lineTo(size.width * 0.5647417, size.height * 0.9335220);
    path_0.lineTo(size.width * 0.6062167, size.height * 0.9651415);
    path_0.lineTo(size.width * 0.6149250, size.height * 0.9900976);
    path_0.quadraticBezierTo(
      size.width * 0.7167167,
      size.height * 0.9934878,
      size.width * 0.8169833,
      size.height * 0.9876146,
    );
    path_0.quadraticBezierTo(
      size.width * 0.8889083,
      size.height * 0.9835463,
      size.width * 1.0270333,
      size.height * 0.9922146,
    );
    path_0.quadraticBezierTo(
      size.width * 1.0039167,
      size.height * 0.9751561,
      size.width * 1.0064500,
      size.height * 0.9593220,
    );
    path_0.quadraticBezierTo(
      size.width * 1.0072417,
      size.height * 0.9376195,
      size.width * 1.0029083,
      size.height * 0.9152195,
    );
    path_0.lineTo(size.width * 0.9970083, size.height * 0.8998293);
    path_0.lineTo(size.width * 1.0066667, size.height * 0.8867317);
    path_0.quadraticBezierTo(
      size.width * 0.9890083,
      size.height * 0.8775659,
      size.width * 0.9916917,
      size.height * 0.8611512,
    );
    path_0.cubicTo(
      size.width * 0.9793000,
      size.height * 0.8402683,
      size.width * 0.9935250,
      size.height * 0.8490634,
      size.width * 0.9890167,
      size.height * 0.8307951,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9970750,
      size.height * 0.8179951,
      size.width * 0.9907667,
      size.height * 0.7932878,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9862417,
      size.height * 0.7899512,
      size.width * 0.9811333,
      size.height * 0.7727366,
    );
    path_0.cubicTo(
      size.width * 0.9854000,
      size.height * 0.7562829,
      size.width * 0.9885000,
      size.height * 0.7375707,
      size.width * 0.9868500,
      size.height * 0.7227220,
    );
    path_0.cubicTo(
      size.width * 0.9865833,
      size.height * 0.6997268,
      size.width * 0.9896000,
      size.height * 0.6744146,
      size.width * 0.9854000,
      size.height * 0.6627366,
    );
    path_0.cubicTo(
      size.width * 0.9872000,
      size.height * 0.6399756,
      size.width * 0.9765333,
      size.height * 0.6378390,
      size.width * 0.9822833,
      size.height * 0.6140195,
    );
    path_0.cubicTo(
      size.width * 0.9882750,
      size.height * 0.5922341,
      size.width * 0.9978083,
      size.height * 0.5625756,
      size.width * 0.9888000,
      size.height * 0.5195268,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9846833,
      size.height * 0.4841902,
      size.width * 0.9900250,
      size.height * 0.4769610,
    );
    path_0.lineTo(size.width * 0.9668667, size.height * 0.4732195);
    path_0.lineTo(size.width * 0.9896667, size.height * 0.4671171);
    path_0.quadraticBezierTo(
      size.width * 0.9838667,
      size.height * 0.4630537,
      size.width * 0.9870000,
      size.height * 0.4442488,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9853917,
      size.height * 0.3940244,
      size.width * 0.9943333,
      size.height * 0.3656195,
    );
    path_0.lineTo(size.width * 0.9843750, size.height * 0.3702829);
    path_0.quadraticBezierTo(
      size.width * 0.9903667,
      size.height * 0.3445415,
      size.width * 0.9872500,
      size.height * 0.3418146,
    );
    path_0.cubicTo(
      size.width * 0.9899417,
      size.height * 0.3155220,
      size.width * 0.9994000,
      size.height * 0.2697268,
      size.width * 0.9980167,
      size.height * 0.2366390,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9873583,
      size.height * 0.2155951,
      size.width * 1.0077417,
      size.height * 0.1949854,
    );
    path_0.lineTo(size.width * 0.9564750, size.height * 0.1800976);
    path_0.lineTo(size.width * 0.9991667, size.height * 0.1862537);
    path_0.lineTo(size.width * 0.9885750, size.height * 0.1731415);
    path_0.quadraticBezierTo(
      size.width * 1.0077583,
      size.height * 0.1590293,
      size.width * 1.0034250,
      size.height * 0.1317122,
    );
    path_0.cubicTo(
      size.width * 1.0002583,
      size.height * 0.1105415,
      size.width * 1.0157000,
      size.height * 0.0998049,
      size.width * 1.0152333,
      size.height * 0.0773854,
    );
    path_0.cubicTo(
      size.width * 1.0128417,
      size.height * 0.0597024,
      size.width * 1.0239500,
      size.height * 0.0255659,
      size.width * 1.0351333,
      size.height * 0.0072634,
    );
    path_0.cubicTo(
      size.width * 1.0388833,
      size.height * -0.0119512,
      size.width * 1.0165167,
      size.height * 0.0059659,
      size.width * 0.9606667,
      size.height * 0.0020829,
    );
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    canvas.save();
    canvas.clipPath(path_0);

    _drawDuneLayer1_1(canvas, size);
    _drawDuneLayer1_2(canvas, size);
    _drawDuneLayer1_3(canvas, size);

    canvas.restore();
  }

  void _drawDuneLayer1_1(Canvas canvas, Size size) {
    final path = Path();

    // Draw the outer rectangle (full size)
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    Path path_1 = Path();
    path_1.moveTo(size.width * 0.2245583, size.height * 0.1338976);
    path_1.quadraticBezierTo(
      size.width * 0.1839083,
      size.height * 0.1412293,
      size.width * 0.1852417,
      size.height * 0.1611073,
    );
    path_1.quadraticBezierTo(
      size.width * 0.1936417,
      size.height * 0.1830000,
      size.width * 0.1775500,
      size.height * 0.1986780,
    );
    path_1.quadraticBezierTo(
      size.width * 0.1960500,
      size.height * 0.2211463,
      size.width * 0.2025833,
      size.height * 0.2478098,
    );
    path_1.cubicTo(
      size.width * 0.1959083,
      size.height * 0.2980439,
      size.width * 0.2252750,
      size.height * 0.3441707,
      size.width * 0.2183167,
      size.height * 0.3797805,
    );
    path_1.cubicTo(
      size.width * 0.2092750,
      size.height * 0.4143268,
      size.width * 0.2047250,
      size.height * 0.4558878,
      size.width * 0.2100667,
      size.height * 0.4879024,
    );
    path_1.quadraticBezierTo(
      size.width * 0.2159000,
      size.height * 0.5194293,
      size.width * 0.2061417,
      size.height * 0.6078049,
    );
    path_1.lineTo(size.width * 0.2003083, size.height * 0.6900927);
    path_1.lineTo(size.width * 0.2405333, size.height * 0.7315707);
    path_1.quadraticBezierTo(
      size.width * 0.2084667,
      size.height * 0.7406976,
      size.width * 0.2133000,
      size.height * 0.7692585,
    );
    path_1.quadraticBezierTo(
      size.width * 0.2223917,
      size.height * 0.7990390,
      size.width * 0.2141750,
      size.height * 0.8312878,
    );
    path_1.lineTo(size.width * 0.2000000, size.height * 0.8848780);
    path_1.lineTo(size.width * 0.2441667, size.height * 0.8692683);
    path_1.quadraticBezierTo(
      size.width * 0.3049083,
      size.height * 0.8537073,
      size.width * 0.3602583,
      size.height * 0.8705756,
    );
    path_1.cubicTo(
      size.width * 0.4321500,
      size.height * 0.8796049,
      size.width * 0.4844833,
      size.height * 0.8592305,
      size.width * 0.5258917,
      size.height * 0.8554488,
    );
    path_1.quadraticBezierTo(
      size.width * 0.5702500,
      size.height * 0.8483902,
      size.width * 0.7033333,
      size.height * 0.8531707,
    );
    path_1.lineTo(size.width * 0.8091667, size.height * 0.8926829);
    path_1.lineTo(size.width * 0.8316667, size.height * 0.8697561);
    path_1.lineTo(size.width * 0.7898167, size.height * 0.8372341);
    path_1.quadraticBezierTo(
      size.width * 0.8074417,
      size.height * 0.8247951,
      size.width * 0.8066667,
      size.height * 0.8035610,
    );
    path_1.quadraticBezierTo(
      size.width * 0.8082000,
      size.height * 0.7853707,
      size.width * 0.8261000,
      size.height * 0.7535171,
    );
    path_1.quadraticBezierTo(
      size.width * 0.7900750,
      size.height * 0.7093220,
      size.width * 0.7969083,
      size.height * 0.6870195,
    );
    path_1.quadraticBezierTo(
      size.width * 0.8080083,
      size.height * 0.6552195,
      size.width * 0.8113833,
      size.height * 0.6065317,
    );
    path_1.lineTo(size.width * 0.7891667, size.height * 0.5702439);
    path_1.quadraticBezierTo(
      size.width * 0.8022917,
      size.height * 0.5173512,
      size.width * 0.8000167,
      size.height * 0.4824195,
    );
    path_1.cubicTo(
      size.width * 0.7953500,
      size.height * 0.4525707,
      size.width * 0.8081833,
      size.height * 0.3904390,
      size.width * 0.8013000,
      size.height * 0.3675659,
    );
    path_1.quadraticBezierTo(
      size.width * 0.7918833,
      size.height * 0.3461512,
      size.width * 0.7980000,
      size.height * 0.3033171,
    );
    path_1.lineTo(size.width * 0.7921417, size.height * 0.2576634);
    path_1.quadraticBezierTo(
      size.width * 0.8240667,
      size.height * 0.2253463,
      size.width * 0.8044083,
      size.height * 0.2020293,
    );
    path_1.cubicTo(
      size.width * 0.7836083,
      size.height * 0.1778829,
      size.width * 0.7694208,
      size.height * 0.1495366,
      size.width * 0.7577583,
      size.height * 0.1320390,
    );
    path_1.cubicTo(
      size.width * 0.6961792,
      size.height * 0.1295232,
      size.width * 0.5710812,
      size.height * 0.1251402,
      size.width * 0.5114417,
      size.height * 0.1219756,
    );
    path_1.quadraticBezierTo(
      size.width * 0.4425833,
      size.height * 0.1169902,
      size.width * 0.3512833,
      size.height * 0.1279902,
    );
    path_1.lineTo(size.width * 0.3091667, size.height * 0.1043902);
    path_1.lineTo(size.width * 0.2558333, size.height * 0.1053659);
    path_1.lineTo(size.width * 0.2245583, size.height * 0.1338976);
    path_1.close();

    // Combine the outer path and the hole using PathOperation.difference
    final combined = Path.combine(PathOperation.difference, path, path_1);

    final layer1Gradient =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color1_2,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    canvas.drawPath(combined, layer1Gradient);
  }

  void _drawDuneLayer1_2(Canvas canvas, Size size) {
    final path = Path();

    // Draw the outer rectangle (full size)
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    Path path_1 = Path();
    path_1.moveTo(size.width * 0.1250000, size.height * 0.0448780);
    path_1.lineTo(size.width * 0.1291667, size.height * 0.0634146);
    path_1.lineTo(size.width * 0.1083333, size.height * 0.0800000);
    path_1.lineTo(size.width * 0.0816667, size.height * 0.0931707);
    path_1.lineTo(size.width * 0.0816667, size.height * 0.1170732);
    path_1.lineTo(size.width * 0.0750000, size.height * 0.1365854);
    path_1.lineTo(size.width * 0.1041667, size.height * 0.1395122);
    path_1.lineTo(size.width * 0.0808333, size.height * 0.1453659);
    path_1.lineTo(size.width * 0.0808333, size.height * 0.1731707);
    path_1.lineTo(size.width * 0.0641667, size.height * 0.2073171);
    path_1.lineTo(size.width * 0.0600000, size.height * 0.2414634);
    path_1.lineTo(size.width * 0.0933333, size.height * 0.2517073);
    path_1.lineTo(size.width * 0.1050000, size.height * 0.2824390);
    path_1.lineTo(size.width * 0.1116667, size.height * 0.3604878);
    path_1.lineTo(size.width * 0.1225000, size.height * 0.4409756);
    path_1.lineTo(size.width * 0.0991667, size.height * 0.5248780);
    path_1.lineTo(size.width * 0.1108333, size.height * 0.5868293);
    path_1.lineTo(size.width * 0.1025000, size.height * 0.6243902);
    path_1.lineTo(size.width * 0.1041667, size.height * 0.6721951);
    path_1.lineTo(size.width * 0.1383333, size.height * 0.7341463);
    path_1.lineTo(size.width * 0.0933333, size.height * 0.7639024);
    path_1.lineTo(size.width * 0.0950000, size.height * 0.8141463);
    path_1.lineTo(size.width * 0.0841667, size.height * 0.8536585);
    path_1.lineTo(size.width * 0.0891667, size.height * 0.8819512);
    path_1.lineTo(size.width * 0.0775000, size.height * 0.9019512);
    path_1.lineTo(size.width * 0.0933333, size.height * 0.9209756);
    path_1.lineTo(size.width * 0.0783333, size.height * 0.9331707);
    path_1.lineTo(size.width * 0.0750000, size.height * 0.9492683);
    path_1.lineTo(size.width * 0.0950000, size.height * 0.9414634);
    path_1.lineTo(size.width * 0.1408333, size.height * 0.9517073);
    path_1.lineTo(size.width * 0.1916667, size.height * 0.9463415);
    path_1.lineTo(size.width * 0.2100000, size.height * 0.9482927);
    path_1.lineTo(size.width * 0.2183333, size.height * 0.9297561);
    path_1.lineTo(size.width * 0.3066667, size.height * 0.9063415);
    path_1.lineTo(size.width * 0.3291667, size.height * 0.9497561);
    path_1.lineTo(size.width * 0.3808333, size.height * 0.9624390);
    path_1.lineTo(size.width * 0.4983333, size.height * 0.9487805);
    path_1.lineTo(size.width * 0.4416667, size.height * 0.9039024);
    path_1.lineTo(size.width * 0.6025000, size.height * 0.9043902);
    path_1.lineTo(size.width * 0.6833333, size.height * 0.9390244);
    path_1.lineTo(size.width * 0.7366667, size.height * 0.9614634);
    path_1.lineTo(size.width * 0.9033333, size.height * 0.9458537);
    path_1.lineTo(size.width * 0.9183333, size.height * 0.9278049);
    path_1.lineTo(size.width * 0.9066667, size.height * 0.8804878);
    path_1.lineTo(size.width * 0.9216667, size.height * 0.8239024);
    path_1.lineTo(size.width * 0.9108333, size.height * 0.7717073);
    path_1.lineTo(size.width * 0.8758333, size.height * 0.7302439);
    path_1.lineTo(size.width * 0.9008333, size.height * 0.7321951);
    path_1.lineTo(size.width * 0.8775000, size.height * 0.7048780);
    path_1.lineTo(size.width * 0.8758333, size.height * 0.6751220);
    path_1.lineTo(size.width * 0.9050000, size.height * 0.6956098);
    path_1.lineTo(size.width * 0.9275000, size.height * 0.7000000);
    path_1.lineTo(size.width * 0.9050000, size.height * 0.6770732);
    path_1.lineTo(size.width * 0.8883333, size.height * 0.6326829);
    path_1.lineTo(size.width * 0.9016667, size.height * 0.6014634);
    path_1.lineTo(size.width * 0.8766667, size.height * 0.5770732);
    path_1.lineTo(size.width * 0.8700000, size.height * 0.5463415);
    path_1.lineTo(size.width * 0.8950000, size.height * 0.5595122);
    path_1.lineTo(size.width * 0.8916667, size.height * 0.5000000);
    path_1.lineTo(size.width * 0.8650000, size.height * 0.4400000);
    path_1.lineTo(size.width * 0.8816667, size.height * 0.4209756);
    path_1.lineTo(size.width * 0.8700000, size.height * 0.3741463);
    path_1.lineTo(size.width * 0.9033333, size.height * 0.3117073);
    path_1.lineTo(size.width * 0.9075000, size.height * 0.2521951);
    path_1.lineTo(size.width * 0.8758333, size.height * 0.2482927);
    path_1.lineTo(size.width * 0.8933333, size.height * 0.2009756);
    path_1.lineTo(size.width * 0.8600000, size.height * 0.1614634);
    path_1.lineTo(size.width * 0.8900000, size.height * 0.1185366);
    path_1.lineTo(size.width * 0.8583333, size.height * 0.0921951);
    path_1.lineTo(size.width * 0.9133333, size.height * 0.0756098);
    path_1.lineTo(size.width * 0.8066667, size.height * 0.0878049);
    path_1.lineTo(size.width * 0.7050000, size.height * 0.0790244);
    path_1.lineTo(size.width * 0.6291667, size.height * 0.0863415);
    path_1.lineTo(size.width * 0.5458333, size.height * 0.0848780);
    path_1.lineTo(size.width * 0.5041667, size.height * 0.0648780);
    path_1.lineTo(size.width * 0.3675000, size.height * 0.0614634);
    path_1.lineTo(size.width * 0.2650000, size.height * 0.0634146);
    path_1.lineTo(size.width * 0.2041667, size.height * 0.0595122);
    path_1.lineTo(size.width * 0.1250000, size.height * 0.0448780);
    path_1.close();

    // Combine the outer path and the hole using PathOperation.difference
    final combined = Path.combine(PathOperation.difference, path, path_1);

    final layer1Gradient =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color1_2,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    canvas.drawPath(combined, layer1Gradient);
  }

  void _drawDuneLayer1_3(Canvas canvas, Size size) {
    final path = Path();

    // Draw the outer rectangle (full size)
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0225000, size.height * 0.3917073);
    path_0.lineTo(size.width * 0.0283333, size.height * 0.4039024);
    path_0.quadraticBezierTo(
      size.width * 0.0294833,
      size.height * 0.4029268,
      size.width * 0.0291667,
      size.height * 0.4104878,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0419833,
      size.height * 0.4213415,
      size.width * 0.0337500,
      size.height * 0.4336585,
    );
    path_0.lineTo(size.width * 0.0450000, size.height * 0.4404878);
    path_0.lineTo(size.width * 0.0350000, size.height * 0.4417073);
    path_0.quadraticBezierTo(
      size.width * 0.0368750,
      size.height * 0.4498195,
      size.width * 0.0454167,
      size.height * 0.4568293,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0584417,
      size.height * 0.4643902,
      size.width * 0.0529167,
      size.height * 0.4726829,
    );
    path_0.lineTo(size.width * 0.0604167, size.height * 0.4760976);
    path_0.lineTo(size.width * 0.0545833, size.height * 0.4829268);
    path_0.lineTo(size.width * 0.0641667, size.height * 0.4900000);
    path_0.lineTo(size.width * 0.0704167, size.height * 0.5060976);
    path_0.lineTo(size.width * 0.0658333, size.height * 0.5260976);
    path_0.lineTo(size.width * 0.0491667, size.height * 0.5156098);
    path_0.lineTo(size.width * 0.0362500, size.height * 0.5102439);
    path_0.quadraticBezierTo(
      size.width * 0.0400000,
      size.height * 0.5139024,
      size.width * 0.0391667,
      size.height * 0.5268293,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0360417,
      size.height * 0.5446341,
      size.width * 0.0320833,
      size.height * 0.5539024,
    );
    path_0.lineTo(size.width * 0.0457750, size.height * 0.5488195);
    path_0.quadraticBezierTo(
      size.width * 0.0338333,
      size.height * 0.5630927,
      size.width * 0.0357083,
      size.height * 0.5704439,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0449750,
      size.height * 0.5897073,
      size.width * 0.0390333,
      size.height * 0.6038390,
    );
    path_0.lineTo(size.width * 0.0575000, size.height * 0.6097561);
    path_0.lineTo(size.width * 0.0323833, size.height * 0.6066293);
    path_0.quadraticBezierTo(
      size.width * 0.0358250,
      size.height * 0.6127268,
      size.width * 0.0414083,
      size.height * 0.6228244,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0385083,
      size.height * 0.6333756,
      size.width * 0.0450000,
      size.height * 0.6380488,
    );
    path_0.lineTo(size.width * 0.0350000, size.height * 0.6409756);
    path_0.lineTo(size.width * 0.0358250, size.height * 0.6549171);
    path_0.quadraticBezierTo(
      size.width * 0.0396667,
      size.height * 0.6544439,
      size.width * 0.0510750,
      size.height * 0.6663366,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0645583,
      size.height * 0.6792780,
      size.width * 0.0598750,
      size.height * 0.6941854,
    );
    path_0.lineTo(size.width * 0.0925000, size.height * 0.7287805);
    path_0.lineTo(size.width * 0.0490583, size.height * 0.7204439);
    path_0.lineTo(size.width * 0.0333333, size.height * 0.7048780);
    path_0.quadraticBezierTo(
      size.width * 0.0323083,
      size.height * 0.7284634,
      size.width * 0.0394083,
      size.height * 0.7442049,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0412417,
      size.height * 0.7622634,
      size.width * 0.0353417,
      size.height * 0.7833561,
    );
    path_0.lineTo(size.width * 0.0558333, size.height * 0.7887805);
    path_0.lineTo(size.width * 0.0283333, size.height * 0.7846878);
    path_0.quadraticBezierTo(
      size.width * 0.0308250,
      size.height * 0.8003122,
      size.width * 0.0422667,
      size.height * 0.8127512,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0520583,
      size.height * 0.8260634,
      size.width * 0.0391667,
      size.height * 0.8409756,
    );
    path_0.lineTo(size.width * 0.0316667, size.height * 0.8375610);
    path_0.quadraticBezierTo(
      size.width * 0.0333917,
      size.height * 0.8513854,
      size.width * 0.0338083,
      size.height * 0.8549756,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0342167,
      size.height * 0.8743024,
      size.width * 0.0264167,
      size.height * 0.8797366,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0235500,
      size.height * 0.8917122,
      size.width * 0.0284500,
      size.height * 0.9004293,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0347667,
      size.height * 0.9117171,
      size.width * 0.0200000,
      size.height * 0.9219512,
    );
    path_0.lineTo(size.width * 0.0483333, size.height * 0.9258537);
    path_0.lineTo(size.width * 0.0317917, size.height * 0.9284293);
    path_0.lineTo(size.width * 0.0361833, size.height * 0.9558244);
    path_0.lineTo(size.width * 0.0226000, size.height * 0.9451610);
    path_0.quadraticBezierTo(
      size.width * 0.0119000,
      size.height * 0.9545805,
      size.width * 0.0195833,
      size.height * 0.9656098,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0250000,
      size.height * 0.9748780,
      size.width * 0.0083333,
      size.height * 0.9834146,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0305250,
      size.height * 0.9736585,
      size.width * 0.0529167,
      size.height * 0.9717073,
    );
    path_0.cubicTo(
      size.width * 0.0828167,
      size.height * 0.9752439,
      size.width * 0.1080250,
      size.height * 0.9689024,
      size.width * 0.1391667,
      size.height * 0.9731707,
    );
    path_0.quadraticBezierTo(
      size.width * 0.1891667,
      size.height * 0.9823171,
      size.width * 0.2570833,
      size.height * 0.9807317,
    );
    path_0.quadraticBezierTo(
      size.width * 0.2583333,
      size.height * 0.9736585,
      size.width * 0.2570833,
      size.height * 0.9646341,
    );
    path_0.quadraticBezierTo(
      size.width * 0.2546917,
      size.height * 0.9565268,
      size.width * 0.2545833,
      size.height * 0.9482927,
    );
    path_0.lineTo(size.width * 0.2691667, size.height * 0.9353659);
    path_0.lineTo(size.width * 0.2691667, size.height * 0.9580488);
    path_0.lineTo(size.width * 0.3004167, size.height * 0.9814634);
    path_0.quadraticBezierTo(
      size.width * 0.3406250,
      size.height * 0.9786585,
      size.width * 0.3812500,
      size.height * 0.9790244,
    );
    path_0.quadraticBezierTo(
      size.width * 0.4305250,
      size.height * 0.9814634,
      size.width * 0.5000000,
      size.height * 0.9848780,
    );
    path_0.lineTo(size.width * 0.5566667, size.height * 0.9724390);
    path_0.lineTo(size.width * 0.5541667, size.height * 0.9446341);
    path_0.lineTo(size.width * 0.5233333, size.height * 0.9217073);
    path_0.lineTo(size.width * 0.5812500, size.height * 0.9278049);
    path_0.lineTo(size.width * 0.6237500, size.height * 0.9592683);
    path_0.lineTo(size.width * 0.6291667, size.height * 0.9814634);
    path_0.quadraticBezierTo(
      size.width * 0.6984417,
      size.height * 0.9765854,
      size.width * 0.7354167,
      size.height * 0.9795122,
    );
    path_0.cubicTo(
      size.width * 0.7980250,
      size.height * 0.9829268,
      size.width * 0.8446917,
      size.height * 0.9768293,
      size.width * 0.8916667,
      size.height * 0.9765854,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9314583,
      size.height * 0.9793902,
      size.width * 0.9933333,
      size.height * 0.9824390,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9862500,
      size.height * 0.9646976,
      size.width * 0.9866667,
      size.height * 0.9529268,
    );
    path_0.cubicTo(
      size.width * 0.9841667,
      size.height * 0.9346976,
      size.width * 0.9881250,
      size.height * 0.9229902,
      size.width * 0.9825000,
      size.height * 0.9092683,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9779167,
      size.height * 0.8953073,
      size.width * 0.9821167,
      size.height * 0.8815951,
    );
    path_0.lineTo(size.width * 0.9712000, size.height * 0.8777268);
    path_0.quadraticBezierTo(
      size.width * 0.9771500,
      size.height * 0.8680000,
      size.width * 0.9691583,
      size.height * 0.8477024,
    );
    path_0.cubicTo(
      size.width * 0.9830417,
      size.height * 0.8146634,
      size.width * 0.9537917,
      size.height * 0.8066341,
      size.width * 0.9576167,
      size.height * 0.7815659,
    );
    path_0.cubicTo(
      size.width * 0.9730167,
      size.height * 0.7830098,
      size.width * 0.9737750,
      size.height * 0.7248098,
      size.width * 0.9583167,
      size.height * 0.7574537,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9404000,
      size.height * 0.7406634,
      size.width * 0.9607167,
      size.height * 0.7246634,
    );
    path_0.lineTo(size.width * 0.9311583, size.height * 0.7135171);
    path_0.lineTo(size.width * 0.9726000, size.height * 0.7240927);
    path_0.quadraticBezierTo(
      size.width * 0.9620667,
      size.height * 0.7132585,
      size.width * 0.9572833,
      size.height * 0.7007463,
    );
    path_0.cubicTo(
      size.width * 0.9496333,
      size.height * 0.6850293,
      size.width * 0.9643917,
      size.height * 0.6559561,
      size.width * 0.9637500,
      size.height * 0.6348146,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9557667,
      size.height * 0.6064683,
      size.width * 0.9627000,
      size.height * 0.5931756,
    );
    path_0.lineTo(size.width * 0.9091667, size.height * 0.5873171);
    path_0.lineTo(size.width * 0.9679583, size.height * 0.5864146);
    path_0.quadraticBezierTo(
      size.width * 0.9629250,
      size.height * 0.5701415,
      size.width * 0.9625000,
      size.height * 0.5463415,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9689000,
      size.height * 0.5394878,
      size.width * 0.9455000,
      size.height * 0.5410732,
    );
    path_0.lineTo(size.width * 0.9648333, size.height * 0.5333659);
    path_0.lineTo(size.width * 0.9705000, size.height * 0.4821463);
    path_0.lineTo(size.width * 0.9453333, size.height * 0.4754146);
    path_0.lineTo(size.width * 0.9276667, size.height * 0.4535122);
    path_0.lineTo(size.width * 0.9675000, size.height * 0.4653659);
    path_0.quadraticBezierTo(
      size.width * 0.9463583,
      size.height * 0.4509171,
      size.width * 0.9575000,
      size.height * 0.4243902,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9506250,
      size.height * 0.4092098,
      size.width * 0.9337500,
      size.height * 0.4182927,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9386500,
      size.height * 0.4082341,
      size.width * 0.9287500,
      size.height * 0.3900000,
    );
    path_0.cubicTo(
      size.width * 0.9306250,
      size.height * 0.3790244,
      size.width * 0.9464583,
      size.height * 0.3850000,
      size.width * 0.9562500,
      size.height * 0.3670732,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9629167,
      size.height * 0.3465854,
      size.width * 0.9312500,
      size.height * 0.3556098,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9615667,
      size.height * 0.3344537,
      size.width * 0.9658333,
      size.height * 0.2946341,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9914583,
      size.height * 0.2057073,
      size.width * 0.9410000,
      size.height * 0.2249756,
    );
    path_0.lineTo(size.width * 0.9666667, size.height * 0.1951220);
    path_0.lineTo(size.width * 0.9187500, size.height * 0.1660976);
    path_0.lineTo(size.width * 0.9745833, size.height * 0.1731707);
    path_0.quadraticBezierTo(
      size.width * 0.9788583,
      size.height * 0.1612195,
      size.width * 0.9675000,
      size.height * 0.1546341,
    );
    path_0.cubicTo(
      size.width * 0.9695833,
      size.height * 0.1414634,
      size.width * 0.9833333,
      size.height * 0.1456732,
      size.width * 0.9841667,
      size.height * 0.1260976,
    );
    path_0.cubicTo(
      size.width * 0.9808333,
      size.height * 0.1095756,
      size.width * 0.9903167,
      size.height * 0.0992098,
      size.width * 0.9829167,
      size.height * 0.0863415,
    );
    path_0.quadraticBezierTo(
      size.width * 0.9755250,
      size.height * 0.0728049,
      size.width * 0.9745833,
      size.height * 0.0495122,
    );
    path_0.lineTo(size.width * 1.0025000, size.height * 0.0351220);
    path_0.quadraticBezierTo(
      size.width * 0.9593750,
      size.height * 0.0342683,
      size.width * 0.9050000,
      size.height * 0.0512195,
    );
    path_0.cubicTo(
      size.width * 0.8358333,
      size.height * 0.0567073,
      size.width * 0.8108333,
      size.height * 0.0479902,
      size.width * 0.7658333,
      size.height * 0.0465854,
    );
    path_0.cubicTo(
      size.width * 0.6742750,
      size.height * 0.0493317,
      size.width * 0.6649000,
      size.height * 0.0418293,
      size.width * 0.6004167,
      size.height * 0.0412195,
    );
    path_0.cubicTo(
      size.width * 0.5185417,
      size.height * 0.0409756,
      size.width * 0.4225000,
      size.height * 0.0381707,
      size.width * 0.3362500,
      size.height * 0.0402439,
    );
    path_0.cubicTo(
      size.width * 0.2149000,
      size.height * 0.0401854,
      size.width * 0.1889583,
      size.height * 0.0311610,
      size.width * 0.1054167,
      size.height * 0.0292683,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0599000,
      size.height * 0.0239024,
      size.width * 0.0241667,
      size.height * 0.0200000,
    );
    path_0.lineTo(size.width * 0.0337500, size.height * 0.0331707);
    path_0.quadraticBezierTo(
      size.width * 0.0458333,
      size.height * 0.0341463,
      size.width * 0.0633333,
      size.height * 0.0436585,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0631250,
      size.height * 0.0629902,
      size.width * 0.0941667,
      size.height * 0.0658537,
    );
    path_0.lineTo(size.width * 0.0666667, size.height * 0.0639024);
    path_0.quadraticBezierTo(
      size.width * 0.0359417,
      size.height * 0.0709756,
      size.width * 0.0379167,
      size.height * 0.0882927,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0530250,
      size.height * 0.1080488,
      size.width * 0.0291667,
      size.height * 0.1421951,
    );
    path_0.lineTo(size.width * 0.0508333, size.height * 0.1434146);
    path_0.quadraticBezierTo(
      size.width * 0.0343750,
      size.height * 0.1513415,
      size.width * 0.0383333,
      size.height * 0.1624390,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0468750,
      size.height * 0.1823171,
      size.width * 0.0295833,
      size.height * 0.1965854,
    );
    path_0.lineTo(size.width * 0.0200000, size.height * 0.2563415);
    path_0.quadraticBezierTo(
      size.width * 0.0315667,
      size.height * 0.2595122,
      size.width * 0.0441667,
      size.height * 0.2580488,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0632333,
      size.height * 0.2658537,
      size.width * 0.0733333,
      size.height * 0.2814634,
    );
    path_0.lineTo(size.width * 0.0487500, size.height * 0.2726829);
    path_0.lineTo(size.width * 0.0337500, size.height * 0.2839024);
    path_0.quadraticBezierTo(
      size.width * 0.0397917,
      size.height * 0.2975610,
      size.width * 0.0429167,
      size.height * 0.3112195,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0428167,
      size.height * 0.3235366,
      size.width * 0.0579167,
      size.height * 0.3173171,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0514583,
      size.height * 0.3328049,
      size.width * 0.0570833,
      size.height * 0.3441463,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0690667,
      size.height * 0.3573805,
      size.width * 0.0800000,
      size.height * 0.3951220,
    );
    path_0.lineTo(size.width * 0.0308333, size.height * 0.3775610);
    path_0.lineTo(size.width * 0.0225000, size.height * 0.3917073);
    path_0.close();

    // Combine the outer path and the hole using PathOperation.difference
    final combined = Path.combine(PathOperation.difference, path, path_0);

    final layer1Gradient =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color1_4,
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    canvas.drawPath(combined, layer1Gradient);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
