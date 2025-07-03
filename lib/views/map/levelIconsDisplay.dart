import 'package:flutter/material.dart';
import 'package:general_knowledge_app/models/level.dart';

class LevelIconsDisplay extends StatelessWidget {
  final Level item;
  const LevelIconsDisplay({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Positioned(
      top: height * 0.001,
      left: height * 0.037,

      child: Transform.rotate(
        angle: 0.1,
        child: Icon(
          !item.isOpen ? Icons.lock : Icons.star,
          size: height * 0.03,
          color:
              !item.isOpen
                  ? const Color.fromARGB(255, 139, 69, 19)
                  : Colors.amber.shade900,

          shadows: [
            Shadow(
              color: const Color.fromARGB(95, 255, 236, 211),
              blurRadius: 20,
              offset: const Offset(0, 0),
            ),
          ],
        ),
      ),
    );
  }
}

class LastLevelAsset extends StatelessWidget {
  const LastLevelAsset({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Positioned(
      top: height * 0.001,
      left: height * 0.007,
      child: Transform.rotate(
        angle: -0.3,
        child: SizedBox(
          height: height * 0.030,
          width: height * 0.030,
          child: Image.asset("assets/images/icons/X.png"),
        ),
      ),
    );
  }
}
