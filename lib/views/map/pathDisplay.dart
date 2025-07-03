import 'package:flutter/material.dart';
import 'package:general_knowledge_app/models/path.dart';
import 'package:general_knowledge_app/painters/pathdrawer.dart';

class PathDisplay extends StatelessWidget {
  final List<MapPath> paths;

  const PathDisplay({super.key, required this.paths});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children:
          paths.map((path) {
            return CustomPaint(
              size: Size(width, height),

              painter: TreasureMapPathPainter(
                startX: path.startX / 100 * width * 0.8 + width * 0.04,
                startY: path.startY / 100 * height * 0.61 + height * 0.19,
                endX: path.endX / 100 * width * 0.8 + width * 0.04,
                endY: path.endY / 100 * height * 0.61 + height * 0.19,
                controlX: path.controlX / 100 * width * 0.8 + width * 0.04,
                controlY: path.controlY / 100 * height * 0.61 + height * 0.19,
                strokeWidth: 5,
                color: Color.fromARGB(255, 139, 69, 19),
              ),
            );
          }).toList(),
    );
  }
}
