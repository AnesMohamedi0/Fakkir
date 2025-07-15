import 'package:flutter/material.dart';
import 'package:general_knowledge_app/models/quiz/matchingQuiz.dart';
import 'package:general_knowledge_app/providers/quiz/matchingProvider.dart';
import 'package:general_knowledge_app/providers/quizProvider.dart';
import 'package:general_knowledge_app/views/quiz/confirmButton.dart';
import 'package:general_knowledge_app/views/quiz/getHintButton.dart';
import 'package:general_knowledge_app/views/quiz/getSolutionButton.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';
import 'package:provider/provider.dart';

class MatchingPage extends StatefulWidget {
  const MatchingPage({super.key});

  @override
  State<MatchingPage> createState() => _MatchingPageState();
}

class _MatchingPageState extends State<MatchingPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    var quiz = (context.read<QuizProvider>().quiz! as MatchingQuiz);
    context.read<MatchingProvider>().setOptions(quiz.options);
    context.read<MatchingProvider>().settoMatchWith(quiz.toMatchWith);
    context.read<MatchingProvider>().setAnswers(quiz.answer);

    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _opacityAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    Future.delayed(const Duration(milliseconds: 500), () {
      _controller.forward();
    });
  }

  Color getColor(int index) {
    switch (index) {
      case 0:
        return const Color.fromARGB(255, 229, 191, 0);
      case 1:
        return Colors.cyan.shade700;
      case 2:
        return Colors.deepOrange.shade700;
      case 3:
        return Colors.purple.shade700;
      default:
        return Colors.black;
    }
  }

  Color getAltColor(int index) {
    switch (index) {
      case 0:
        return Colors.yellowAccent.shade200;
      case 1:
        return Colors.cyan.shade200;
      case 2:
        return Colors.deepOrange.shade200;
      case 3:
        return Colors.purple.shade200;

      default:
        return const Color.fromARGB(55, 255, 255, 255);
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
          top: height * 0.485,

          child: SizedBox(
            width: width,
            child: Column(
              children: [
                Wrap(
                  spacing: width * 0.02,
                  runSpacing: height * 0.005,
                  alignment: WrapAlignment.center,
                  children: List.generate(
                    context.read<MatchingProvider>().toMatchWith.length,
                    (index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: getColor(index),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: height * 0.012,
                          vertical: height * 0.004,
                        ),
                        child: SubTitleText(
                          text:
                              context
                                  .read<MatchingProvider>()
                                  .toMatchWith[index],
                          size: height * 0.018,
                          color: Colors.white,
                          weight: FontWeight.w600,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: height * 0.01),

                Consumer<MatchingProvider>(
                  builder: (context, provider, _) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.003),
                      child: Wrap(
                        spacing: height * 0.006,
                        runSpacing: height * 0.005,
                        alignment: WrapAlignment.center,

                        children: List.generate(
                          context.read<MatchingProvider>().options.length,
                          (index) {
                            return TextButton(
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                minimumSize: Size.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              onPressed: () {
                                provider.toggleInput(provider.options[index]);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    height * 0.012,
                                  ),
                                  border: Border.all(
                                    color:
                                        provider.colorsShow()
                                            ? provider.correct[index]
                                                ? Colors.lightGreen.shade900
                                                : Colors.red.shade800
                                            : getColor(
                                              provider.input[provider
                                                  .options[index]]!,
                                            ),
                                    width: 2.3,
                                  ),
                                  color: getAltColor(
                                    provider.input[provider.options[index]]!,
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(
                                  vertical: height * 0.008,
                                  horizontal: width * 0.03,
                                ),
                                child: SubTitleText(
                                  text: provider.options[index],
                                  size: height * 0.023,
                                  weight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: height * 0.025),
                Consumer<MatchingProvider>(
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
        ),
      ],
    );
  }
}
