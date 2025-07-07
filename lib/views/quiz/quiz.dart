import 'package:flutter/material.dart';
import 'package:general_knowledge_app/models/quiz/stickingQuiz.dart';
import 'package:general_knowledge_app/views/quiz/QuizPages/complete.dart';
import 'package:general_knowledge_app/views/quiz/QuizPages/interval.dart';
import 'package:general_knowledge_app/views/quiz/QuizPages/matching.dart';
import 'package:general_knowledge_app/views/quiz/QuizPages/options.dart';
import 'package:general_knowledge_app/views/quiz/QuizPages/ordering.dart';
import 'package:general_knowledge_app/models/quiz/completeQuiz.dart';
import 'package:general_knowledge_app/models/quiz/intervalQuiz.dart';
import 'package:general_knowledge_app/models/quiz/matchingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/optionsQuiz.dart';
import 'package:general_knowledge_app/models/quiz/orderingQuiz.dart';
import 'package:general_knowledge_app/providers/quizProvider.dart';
import 'package:general_knowledge_app/views/quiz/QuizPages/sticking.dart';
import 'package:general_knowledge_app/views/shared/animatedBackground.dart';
import 'package:general_knowledge_app/views/shared/colors.dart';
import 'package:general_knowledge_app/views/shared/heartCoinBar.dart';
import 'package:general_knowledge_app/views/shared/menuButton.dart';
import 'package:general_knowledge_app/views/quiz/categorydisplay.dart';
import 'package:general_knowledge_app/views/quiz/header.dart';
import 'package:general_knowledge_app/views/quiz/typedisplay.dart';
import 'package:general_knowledge_app/views/shared/returnButton.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';
import 'package:provider/provider.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final Map<Type, Widget> typePage = {
      IntervalQuiz: IntervalPage(),
      OptionsQuiz: OptionsPage(),
      CompleteQuiz: CompletePage(),
      OrderingQuiz: OrderingPage(),
      MatchingQuiz: MatchingPage(),
      StickingQuiz: StickingPage(),
    };

    return Scaffold(
      body: Stack(
        children: [
          AnimatedGradientBackground(),
          HeartCoinBar(),
          SafeArea(
            child: Stack(
              children: [
                QuizHeader(),
                Consumer<QuizProvider>(
                  builder: (context, provider, _) {
                    var widget = typePage[provider.quiz?.runtimeType];

                    return widget ?? Container();
                  },
                ),
                MenuButton(),
                Consumer<QuizProvider>(
                  builder: (context, provider, _) {
                    if (provider.level == null || provider.map == null) {
                      return Container();
                    }

                    return Stack(
                      children: [
                        Positioned(
                          top: height * 0.033,
                          child: Container(
                            width: width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SubTitleText(
                                  text: provider.level!.name,
                                  size: height * 0.034,
                                  weight: FontWeight.w600,
                                  color: colorTextDark,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: height * 0.075,
                          child: Container(
                            width: width,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HudhudText(
                                      text: provider.map!.name,
                                      size: height * 0.022,
                                      weight: FontWeight.w500,
                                      color: colorTextDark,
                                    ),
                                  ],
                                ),
                                SizedBox(height: height * 0.005),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CategoryContainer(
                                      id: provider.quiz!.categoryId,
                                    ),
                                    SizedBox(width: width * 0.01),
                                    QuizTypeContainer(quiz: provider.quiz!),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                ReturnButton(),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: width,
              alignment: Alignment.center,
              child: SizedBox(
                width: height * 0.1,
                child: Image.asset('assets/images/logo.png', fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
