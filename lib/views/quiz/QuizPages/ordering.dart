import 'package:flutter/material.dart';
import 'package:general_knowledge_app/models/quiz/orderingQuiz.dart';
import 'package:general_knowledge_app/providers/quiz/orderingProvider.dart';
import 'package:general_knowledge_app/providers/quizProvider.dart';
import 'package:general_knowledge_app/views/quiz/confirmButton.dart';
import 'package:general_knowledge_app/views/quiz/getHintButton.dart';
import 'package:general_knowledge_app/views/quiz/getSolutionButton.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';
import 'package:provider/provider.dart';

class OrderingPage extends StatefulWidget {
  const OrderingPage({super.key});

  @override
  State<OrderingPage> createState() => _OrderingPageState();
}

class _OrderingPageState extends State<OrderingPage> {
  @override
  void initState() {
    super.initState();
    context.read<OrderingProvider>().setOptions(
      (context.read<QuizProvider>().quiz! as OrderingQuiz).options,
    );
    context.read<OrderingProvider>().setAnswer(
      (context.read<QuizProvider>().quiz! as OrderingQuiz).correctOrder,
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned(
          top: height * 0.49,
          child: Consumer<OrderingProvider>(
            builder: (context, provider, _) {
              return Container(
                width: width,
                padding: EdgeInsets.all(height * 0.01),
                child: Column(
                  children: [
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: height * 0.015,
                      runSpacing: height * 0.01,
                      children: [
                        ...List.generate(
                          provider.input.length,
                          (index) => Draggable<String>(
                            onDragEnd: (_) {
                              provider.resetSelected();
                            },

                            data: provider.input[index],
                            feedback: Material(
                              color: Colors.transparent,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: height * 0.01,
                                  horizontal: width * 0.03,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    255,
                                    255,
                                    255,
                                    254,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    height * 0.012,
                                  ),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                ),
                                child: SubTitleText(
                                  text: provider.input[index],
                                  size: height * 0.023,
                                  weight: FontWeight.w500,
                                  align: TextAlign.center,
                                ),
                              ),
                            ),
                            childWhenDragging: null,
                            child: DragTarget<String>(
                              onWillAcceptWithDetails: (details) {
                                Future.delayed(Duration(milliseconds: 100), () {
                                  provider.targetIndex = index;

                                  if (provider.isRepositioning) {
                                    provider.updateTempPosition(
                                      provider.selectedItem!,
                                      index,
                                    );
                                  } else {
                                    provider.startRepositioning(
                                      provider.input[index],
                                    );
                                    provider.updateTempPosition(
                                      provider.input[index],
                                      index,
                                    );
                                  }
                                });

                                return true;
                              },
                              onAcceptWithDetails: (details) {
                                provider.confirmRepositioning();
                                provider.resetSelected();
                                provider.makeCanEnter();
                              },
                              onLeave: (details) {
                                provider.notifyListeners1();
                              },

                              builder: (context, candidateData, rejectedData) {
                                return Opacity(
                                  opacity:
                                      (provider.isRepositioning &&
                                              provider.targetIndex == index)
                                          ? 0.5
                                          : 1.0,
                                  child: Stack(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                          top: height * 0.01,
                                          bottom: height * 0.01,
                                          left: width * 0.028,
                                          right: width * 0.045,
                                        ),
                                        decoration: BoxDecoration(
                                          color:
                                              provider.colorShow()
                                                  ? provider.correct[index]
                                                      ? Colors.lightGreenAccent
                                                      : Colors
                                                          .redAccent
                                                          .shade200
                                                  : (provider.hintUsedOn !=
                                                              null &&
                                                          provider.hintUsedOn ==
                                                              index ||
                                                      provider.hintUsedOn2 !=
                                                              null &&
                                                          provider.hintUsedOn2 ==
                                                              index)
                                                  ? Colors.teal.shade500
                                                  : index % 2 == 0
                                                  ? const Color.fromARGB(
                                                    255,
                                                    255,
                                                    237,
                                                    165,
                                                  )
                                                  : const Color.fromARGB(
                                                    255,
                                                    255,
                                                    221,
                                                    97,
                                                  ),
                                          borderRadius: BorderRadius.circular(
                                            height * 0.012,
                                          ),
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 2,
                                          ),
                                        ),
                                        child: SubTitleText(
                                          text:
                                              provider.isRepositioning
                                                  ? provider.tempInput[index]
                                                  : provider.input[index],
                                          size: height * 0.023,
                                          weight: FontWeight.w500,
                                          align: TextAlign.center,
                                        ),
                                      ),

                                      Positioned(
                                        right: -height * 0.0042,
                                        top: -height * 0.0042,
                                        child: Container(
                                          height: height * 0.025,
                                          width: height * 0.025,
                                          alignment: Alignment.topCenter,
                                          padding: EdgeInsets.only(
                                            top: height * 0.001,
                                            right: width * 0.004,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            shape: BoxShape.circle,
                                          ),
                                          child: NumbersText(
                                            text: (index + 1).toString(),
                                            size: height * 0.018,
                                            weight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
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
