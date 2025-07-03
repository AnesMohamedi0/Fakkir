import 'package:flutter/material.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';

// ignore: must_be_immutable
class ProgressBarDisplay extends StatelessWidget {
  int progress;
  ProgressBarDisplay({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Positioned(
      top: height * 0.05,
      right: width * 0.72,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SubTitleText(
                text: "10/",
                size: height * 0.017,
                weight: FontWeight.w700,
              ),
              SubTitleText(
                text: progress.toString(),
                size: height * 0.027,
                weight: FontWeight.w700,
              ),
            ],
          ),
          SizedBox(
            height: height * 0.08,
            width: height * 0.08,
            child: CircularProgressIndicator(
              value: progress / 10,
              backgroundColor: Colors.white,
              color: const Color.fromARGB(255, 42, 28, 0),
              strokeWidth: 9,
            ),
          ),
        ],
      ),
    );
  }
}
