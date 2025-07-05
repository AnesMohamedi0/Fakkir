import 'package:flutter/material.dart';
import 'package:general_knowledge_app/views/shared/colors.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';

class Difficultydisplay extends StatelessWidget {
  final difficulty;
  const Difficultydisplay({super.key, required this.difficulty});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Positioned(
      top: height * 0.098,
      left: width * 0.265,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SubTitleText(
            text: "المستوى: ",
            size: height * 0.0145,
            weight: FontWeight.w500,
            color: colorText,
          ),
          SubTitleText(
            text: difficulty,
            size: height * 0.0145,
            weight: FontWeight.w700,
            color: colorTextDark,
          ),
        ],
      ),
    );
  }
}
