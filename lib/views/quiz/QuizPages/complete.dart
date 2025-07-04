import 'package:flutter/material.dart';
import 'package:general_knowledge_app/models/quiz/completeQuiz.dart';
import 'package:general_knowledge_app/providers/quiz/completeProvider.dart';
import 'package:general_knowledge_app/providers/quizProvider.dart';
import 'package:general_knowledge_app/views/quiz/confirmButton.dart';
import 'package:general_knowledge_app/views/quiz/getHintButton.dart';
import 'package:general_knowledge_app/views/quiz/getSolutionButton.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';
import 'package:provider/provider.dart';

class CompletePage extends StatefulWidget {
  const CompletePage({super.key});

  @override
  State<CompletePage> createState() => _CompletePageState();
}

class _CompletePageState extends State<CompletePage> {
  @override
  void initState() {
    context.read<CompleteProvider>().setAnswer(
      (context.read<QuizProvider>().quiz! as CompleteQuiz).answer,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
          top: height * 0.46,

          child: Consumer<CompleteProvider>(
            builder: (context, provider, _) {
              return Container(
                width: width,
                padding: EdgeInsets.all(18),
                child: Column(
                  children: [
                    Container(
                      width: width,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 3,
                        runSpacing: 4,
                        children: List.generate(
                          provider.answer!.length,
                          (index) => SizedBox(
                            height: height * 0.055,
                            width: width * 0.09,
                            child:
                                provider.answer![index] == " "
                                    ? Container()
                                    : TextButton(
                                      onPressed:
                                          provider.input[index] != "_"
                                              ? () =>
                                                  provider.removeLetter(index)
                                              : null,

                                      style: TextButton.styleFrom(
                                        backgroundColor:
                                            provider.colorsShow()
                                                ? provider.correct[index]
                                                    ? Colors.lightGreenAccent
                                                    : Colors.red.shade400
                                                : Colors.white54,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            4,
                                          ),
                                          side: const BorderSide(
                                            color: Colors.black,
                                            width: 2,
                                          ),
                                        ),
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: SubTitleText(
                                        size: height * 0.026,
                                        weight: FontWeight.w500,
                                        text:
                                            provider.input[index] != "_"
                                                ? provider.input[index]
                                                : '',
                                      ),
                                    ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.02),

                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 3,
                      runSpacing: 4,
                      children: List.generate(provider.options.length, (index) {
                        return SizedBox(
                          height: height * 0.055,
                          width: width * 0.093,
                          child: TextButton(
                            onPressed: () {
                              if (provider.isSelected[index] != -1) {
                                provider.removeLetterByIndex(index);
                                return;
                              }

                              provider.addLetter(
                                provider.options[index],
                                index,
                              );
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors:
                                      provider.isSelected[index] != -1
                                          ? [
                                            Colors.amber.shade300,
                                            Colors.amber.shade400,
                                          ]
                                          : [Colors.white38, Colors.white24],
                                ),
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2,
                                ),
                              ),
                              child: SubTitleText(
                                text: provider.options[index],
                                weight: FontWeight.w500,
                              ),
                            ),
                          ),
                        );
                      }),
                    ),

                    SizedBox(height: height * 0.03),
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
        ),
      ],
    );
  }
}
