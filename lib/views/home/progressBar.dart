import 'package:flutter/material.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';

// ignore: must_be_immutable
class ProgressBarDisplay extends StatelessWidget {
  int progress;
  int max;
  double? size;
  ProgressBarDisplay({
    super.key,
    required this.progress,
    this.max = 10,
    this.size,
  });

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
                text: "$max/",
                size: 0.212 * (size ?? height * 0.08),
                weight: FontWeight.w700,
                color:
                    progress / max < 0.5
                        ? Colors.red.shade900
                        : progress / max < 0.8
                        ? Colors.amber.shade900
                        : Colors.green.shade900,
              ),
              SubTitleText(
                text: progress.toString(),
                size: 0.337 * (size ?? (height) * 0.08),
                weight: FontWeight.w700,
              ),
            ],
          ),
          SizedBox(
            height: size ?? height * 0.08,
            width: size ?? height * 0.08,
            child: CircularProgressIndicator(
              value: progress / max,
              backgroundColor:
                  progress / max < 0.5
                      ? Colors.red.shade200
                      : progress / max < 0.8
                      ? Colors.amber.shade200
                      : Colors.green.shade200,
              color:
                  progress / max < 0.5
                      ? Colors.red.shade700
                      : progress / max < 0.8
                      ? Colors.amber.shade700
                      : Colors.green.shade700,

              strokeWidth: 0.11 * (size ?? height * 0.08),
            ),
          ),
        ],
      ),
    );
  }
}
