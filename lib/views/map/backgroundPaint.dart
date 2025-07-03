import 'package:flutter/material.dart';
import 'package:general_knowledge_app/painters/playmap.dart';
import 'package:general_knowledge_app/painters/playmapheader.dart';

class BackGroundPaint extends StatelessWidget {
  const BackGroundPaint({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned(
          top: height * 0.15,
          child: CustomPaint(
            size: Size(width, height * 0.76),
            painter: PlayMapPainter(),
          ),
        ),
        Positioned(
          top: height * 0.09,
          child: CustomPaint(
            size: Size(width, height * 0.1),
            painter: PlayMapHeaderPainter(),
          ),
        ),
      ],
    );
  }
}
