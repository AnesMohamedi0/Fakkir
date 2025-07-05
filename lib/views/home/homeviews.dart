import 'package:flutter/material.dart';
import 'package:general_knowledge_app/models/map.dart';
import 'package:general_knowledge_app/painters/selectionpainter.dart';
import 'package:general_knowledge_app/providers/mapProvider.dart';
import 'package:general_knowledge_app/views/home/difficultyDisplay.dart';
import 'package:general_knowledge_app/views/home/mapButton.dart';
import 'package:general_knowledge_app/views/home/progressBar.dart';
import 'package:general_knowledge_app/views/shared/colors.dart';
import 'package:provider/provider.dart';

class MapsDisplay extends StatefulWidget {
  final GameMap map;

  const MapsDisplay({super.key, required this.map});

  @override
  State<MapsDisplay> createState() => _MapsDisplayState();
}

class _MapsDisplayState extends State<MapsDisplay> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: width,
      height: height * 0.146,

      child: CustomPaint(
        size: Size(width, height * 0.25),
        painter: SelectionPainter(),
        child: Stack(
          children: [
            Difficultydisplay(difficulty: widget.map.difficultyToString()),
            MapButton(map: widget.map),

            (!widget.map.isOpen)
                ? Positioned(
                  right: width * 0.67,
                  child: Transform.rotate(
                    angle: -0.3,
                    child: Icon(
                      Icons.lock,
                      size: height * 0.135,
                      color: colormain[800],
                    ),
                  ),
                )
                : ProgressBarDisplay(progress: widget.map.progress),

            Positioned(
              child: GestureDetector(
                onDoubleTap: () {
                  context.read<MapProvider>().setMapOpenById(widget.map.id);
                },
                child: Icon(Icons.abc),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
