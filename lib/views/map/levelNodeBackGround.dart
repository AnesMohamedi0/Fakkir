import 'package:flutter/material.dart';
import 'package:general_knowledge_app/models/level.dart';
import 'package:general_knowledge_app/views/shared/colors.dart';

class LevelNodeBackground extends StatelessWidget {
  final Level item;
  const LevelNodeBackground({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.042,
      width: height * 0.042,
      decoration: BoxDecoration(
        color:
            !item.isOpen
                ? const Color.fromARGB(255, 222, 184, 135)
                : const Color.fromARGB(255, 255, 248, 220),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: height * 0.003, color: color1),
      ),
    );
  }
}
