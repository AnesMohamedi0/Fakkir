import 'package:flutter/material.dart';
import 'package:general_knowledge_app/models/quiz/intervalQuiz.dart';
import 'package:general_knowledge_app/painters/intervalpainter.dart';
import 'package:general_knowledge_app/providers/quiz/intervalProvider.dart';
import 'package:general_knowledge_app/providers/quizProvider.dart';
import 'package:general_knowledge_app/views/quiz/confirmButton.dart';
import 'package:general_knowledge_app/views/quiz/getHintButton.dart';
import 'package:general_knowledge_app/views/quiz/getSolutionButton.dart';
import 'package:general_knowledge_app/views/shared/colors.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';
import 'package:provider/provider.dart';

class IntervalPage extends StatefulWidget {
  const IntervalPage({super.key});

  @override
  State<IntervalPage> createState() => _IntervalPageState();
}

class _IntervalPageState extends State<IntervalPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    var quiz = (context.read<QuizProvider>().quiz! as IntervalQuiz);
    context.read<IntervalProvider>().setAnswer(quiz.answer);
    context.read<IntervalProvider>().setMinInterval(quiz.minInterval);
    context.read<IntervalProvider>().setMaxInterval(quiz.maxInterval);
    context.read<IntervalProvider>().setMargin(quiz.margin);

    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _opacityAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    Future.delayed(Duration(milliseconds: 500), () {
      _controller.forward();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
          top: height * 0.4904,
          child: Consumer<IntervalProvider>(
            builder: (context, provider, _) {
              return SizedBox(
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed:
                          provider.selected == provider.maxInterval
                              ? null
                              : () {
                                provider.setSelected(provider.selected + 1);
                              },
                      icon: Icon(
                        Icons.add,
                        size: height * 0.03,
                        color: colorTextDark,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: NumbersText(
                        text: provider.selected.toStringAsFixed(0),
                        size: height * 0.065,
                      ),
                    ),
                    IconButton(
                      onPressed:
                          provider.selected == provider.minInterval
                              ? null
                              : () {
                                provider.setSelected(provider.selected - 1);
                              },
                      icon: Icon(
                        Icons.remove,
                        size: height * 0.03,
                        color: colorTextDark,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),

        if (context.read<IntervalProvider>().getMargin() != 0)
          Positioned(
            top: height * 0.56,
            child: Consumer<IntervalProvider>(
              builder: (context, provider, _) {
                int min = (provider.selected - provider.margin).round();
                int max = (provider.selected + provider.margin).round();

                if (min < provider.minInterval) {
                  min = provider.minInterval.round();
                }
                if (max > provider.maxInterval) {
                  max = provider.maxInterval.round();
                }
                return Container(
                  width: width,
                  alignment: Alignment.center,
                  child: NumbersText(text: '[$min - $max]', color: colorText),
                );
              },
            ),
          ),

        Positioned(
          top: height * 0.61,
          child: Column(
            children: [
              Consumer<IntervalProvider>(
                builder: (context, provider, _) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: height * 0.025),
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NumbersText(
                          text: provider.minInterval.toStringAsFixed(
                            provider.minInterval.truncateToDouble() ==
                                    provider.minInterval
                                ? 0
                                : 1,
                          ),
                        ),
                        NumbersText(
                          text: provider.maxInterval.toStringAsFixed(
                            provider.maxInterval.truncateToDouble() ==
                                    provider.maxInterval
                                ? 0
                                : 1,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              Container(
                width: width * 0.8,
                height: height * 0.05,
                alignment: Alignment.center,
                child: GestureDetector(
                  onTapUp: (details) {
                    final RenderBox renderBox =
                        context.findRenderObject() as RenderBox;
                    final localPosition = renderBox.globalToLocal(
                      details.globalPosition,
                    );

                    double barStart = width * 0.1;
                    double barWidth = width * 0.8;
                    double dx = localPosition.dx - barStart;

                    dx = dx.clamp(0, barWidth);

                    final provider = context.read<IntervalProvider>();
                    double min = provider.minInterval;
                    double max = provider.maxInterval;

                    double value = min + (dx / barWidth) * (max - min);

                    provider.setSelected(max - value + min);
                  },
                  onPanUpdate: (details) {
                    final RenderBox renderBox =
                        context.findRenderObject() as RenderBox;
                    final localPosition = renderBox.globalToLocal(
                      details.globalPosition,
                    );

                    double barStart = width * 0.1;
                    double barWidth = width * 0.8;
                    double dx = localPosition.dx - barStart;

                    dx = dx.clamp(0, barWidth);

                    final provider = context.read<IntervalProvider>();
                    double min = provider.minInterval;
                    double max = provider.maxInterval;

                    double value = min + (dx / barWidth) * (max - min);

                    provider.setSelected(max - value + min);
                  },
                  child: SizedBox(
                    width: width * 0.8,
                    height: height * 0.05,

                    child: Consumer<IntervalProvider>(
                      builder: (context, provider, _) {
                        return CustomPaint(
                          painter: IntervalPainter(
                            selected: provider.selected,
                            end: provider.minInterval,
                            start: provider.maxInterval,
                            color: colormain[400]!,
                            hint: provider.hint,
                            hintMargin: provider.hintMargin,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.03),
              Consumer<IntervalProvider>(
                builder: (context, provider, _) {
                  return AnimatedBuilder(
                    animation: _opacityAnimation,
                    builder: (context, child) {
                      return Opacity(
                        opacity: _opacityAnimation.value,
                        child: child,
                      );
                    },
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [ConfirmButton(provider: provider)],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GetHintButton(provider: provider),
                            SizedBox(width: width * 0.015),
                            GetSolutionButton(provider: provider),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
