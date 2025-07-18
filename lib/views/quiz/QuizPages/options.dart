import 'package:flutter/material.dart';
import 'package:general_knowledge_app/models/quiz/optionsQuiz.dart';
import 'package:general_knowledge_app/providers/quiz/optionsProvider.dart';
import 'package:general_knowledge_app/providers/quizProvider.dart';
import 'package:general_knowledge_app/views/quiz/confirmButton.dart';
import 'package:general_knowledge_app/views/quiz/getHintButton.dart';
import 'package:general_knowledge_app/views/quiz/getSolutionButton.dart';
import 'package:general_knowledge_app/views/shared/colors.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';
import 'package:provider/provider.dart';

class OptionsPage extends StatefulWidget {
  const OptionsPage({super.key});

  @override
  State<OptionsPage> createState() => _OptionsPageState();
}

class _OptionsPageState extends State<OptionsPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    context.read<OptionsProvider>().setAnswers(
      (context.read<QuizProvider>().quiz! as OptionsQuiz).answers,
    );
    context.read<OptionsProvider>().setOptions(
      (context.read<QuizProvider>().quiz! as OptionsQuiz).options,
    );
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
          top: height * 0.49,
          child: Consumer<OptionsProvider>(
            builder: (context, provider, _) {
              return Container(
                width: width,
                padding: EdgeInsets.all(height * 0.01),
                child: Column(
                  children: [
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: height * 0.006,
                      runSpacing: height * 0.005,
                      children: [
                        ...List.generate(
                          provider.options.length,
                          (index) => TextButton(
                            onPressed: () {
                              provider.toggleSelected(index);
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
                                color:
                                    provider.isSelected[index]
                                        ? index % 2 == 0
                                            ? colormain[300]
                                            : colormain[200]
                                        : const Color.fromARGB(
                                          55,
                                          255,
                                          255,
                                          255,
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
                          ),
                        ),
                      ],
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
