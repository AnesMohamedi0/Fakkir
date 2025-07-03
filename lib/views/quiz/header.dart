import 'package:flutter/material.dart';
import 'package:general_knowledge_app/main.dart';
import 'package:general_knowledge_app/painters/quizpainter.dart';
import 'package:general_knowledge_app/providers/quizProvider.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';
import 'package:provider/provider.dart';

class QuizHeader extends StatelessWidget {
  const QuizHeader({super.key});

  @override
  Widget build(BuildContext context) {
    double width = ScreenConfig.width(context);
    double height = ScreenConfig.height(context);
    return Stack(
      children: [
        Positioned(
          top: height * 0.06,
          child: CustomPaint(
            size: Size(width, height * 0.5),
            painter: QuizPainter(),
          ),
        ),

        Consumer<QuizProvider>(
          builder: (context, provider, _) {
            if (provider.level == null || provider.map == null) {
              return Container();
            }

            return Positioned(
              top: height * 0.161,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(18),
                  width: width,
                  height: height * 0.295,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SubTitleText(
                        text: provider.quiz!.question,
                        weight: FontWeight.w500,
                        align: TextAlign.center,
                      ),
                      if (provider.quiz!.imagePath != null)
                        Container(
                          width: width * 0.6,
                          height: height * 0.15,
                          child: Image.asset(
                            provider.quiz!.imagePath!,
                            fit: BoxFit.contain,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
