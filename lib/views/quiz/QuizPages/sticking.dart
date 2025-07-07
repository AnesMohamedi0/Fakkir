import 'package:flutter/material.dart';
import 'package:general_knowledge_app/models/quiz/stickingQuiz.dart';
import 'package:general_knowledge_app/providers/quiz/stickingProvider.dart';
import 'package:general_knowledge_app/providers/quizProvider.dart';
import 'package:general_knowledge_app/views/quiz/confirmButton.dart';
import 'package:general_knowledge_app/views/quiz/getHintButton.dart';
import 'package:general_knowledge_app/views/quiz/getSolutionButton.dart';
import 'package:general_knowledge_app/views/shared/colors.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';
import 'package:provider/provider.dart';

class StickingPage extends StatefulWidget {
  const StickingPage({super.key});

  @override
  State<StickingPage> createState() => _StickingPageState();
}

class _StickingPageState extends State<StickingPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    context.read<StickingProvider>().setAnswer(
      (context.read<QuizProvider>().quiz! as StickingQuiz).answer,
    );
    context.read<StickingProvider>().setOptions(
      (context.read<QuizProvider>().quiz! as StickingQuiz).options,
    );
    super.initState();
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
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
          top: height * 0.48,
          left: width * 0.17,
          child: IconButton(
            onPressed: () {
              context.read<StickingProvider>().removeLast();
            },
            icon: Icon(
              Icons.backspace,
              size: height * 0.035,
              color: colorTextDark,
            ),
          ),
        ),
        Positioned(
          top: height * 0.46,

          child: Consumer<StickingProvider>(
            builder: (context, provider, _) {
              return Container(
                width: width,
                padding: EdgeInsets.all(18),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: provider.answer.length * height * 0.03,
                          height: height * 0.05,
                          alignment: Alignment.center,

                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: colorTextDark,
                              width: 2.5,
                            ),
                            color: Colors.white70,
                          ),
                          child: SubTitleText(
                            text: provider.input,
                            size: height * 0.023,
                            weight: FontWeight.w600,
                            color: colorTextDark,
                            align: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.02),

                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 3,
                      runSpacing: 4,
                      children: List.generate(provider.getOptions().length, (
                        index,
                      ) {
                        return TextButton(
                          onPressed: () {
                            if (provider.isSelected[index] != -1) {
                              provider.removeOption(index);
                              return;
                            }
                            if (provider.canAdd()) {
                              provider.addOption(index);
                            }
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: height * 0.01,
                              horizontal: width * 0.03,
                            ),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors:
                                    (provider.hintUsedOn == index ||
                                            provider.hintUsedOn2 == index)
                                        ? [
                                          Colors.amberAccent.shade200,
                                          Colors.amberAccent.shade100,
                                        ]
                                        : provider.isSelected[index] != -1
                                        ? [
                                          colormain[200]!,
                                          const Color.fromARGB(
                                            255,
                                            233,
                                            196,
                                            170,
                                          ),
                                        ]
                                        : [Colors.white38, Colors.white24],
                              ),
                              borderRadius: BorderRadius.circular(
                                height * 0.012,
                              ),
                              border: Border.all(
                                color: colorTextDark,
                                width: 2.3,
                              ),
                            ),
                            child: SubTitleText(
                              text: provider.options[index],
                              size: height * 0.023,
                              weight: FontWeight.w600,
                              color: colorTextDark,
                              align: TextAlign.center,
                            ),
                          ),
                        );
                      }),
                    ),
                    TextButton(
                      onPressed: () {
                        if (!provider.canAddSpace()) return;
                        provider.addSpace();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: height * 0.005,
                          horizontal: width * 0.07,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.white38, Colors.white24],
                          ),
                          borderRadius: BorderRadius.circular(height * 0.012),
                          border: Border.all(color: colorTextDark, width: 2.3),
                        ),
                        child: Icon(
                          Icons.space_bar,
                          color: colorTextDark,
                          size: height * 0.03,
                        ),
                      ),
                    ),

                    SizedBox(height: height * 0.03),
                    AnimatedBuilder(
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
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
