import 'package:flutter/material.dart';
import 'package:general_knowledge_app/providers/playerprovider.dart';
import 'package:general_knowledge_app/providers/quizProvider.dart';
import 'package:general_knowledge_app/views/shared/colors.dart';
import 'package:general_knowledge_app/views/shared/popUps/correctPopUp.dart';
import 'package:general_knowledge_app/views/shared/popUps/heartPopUp.dart';
import 'package:general_knowledge_app/views/shared/popUps/incorrectPopUp.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';
import 'package:provider/provider.dart';

class ConfirmButton extends StatelessWidget {
  final provider;
  const ConfirmButton({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.only(bottom: height * 0.005),
      ),
      onPressed:
          provider.canEnter()
              ? () {
                if (!context.read<PlayerProvider>().hasHearts() &&
                    !context.read<QuizProvider>().level!.isDone) {
                  showDialog(
                    context: context,
                    builder: (context) => HeartPopUp(),
                  );
                  return;
                }
                if (!provider.isCorrect()) {
                  if (!context.read<QuizProvider>().level!.isDone) {
                    context.read<PlayerProvider>().removeHeart();
                  }

                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder:
                        (context) => IncorrectPopUp(
                          minusHeart:
                              !context.read<QuizProvider>().level!.isDone,
                        ),
                  );

                  // Auto-dismiss after 2 seconds
                  Future.delayed(Duration(milliseconds: 800), () {
                    if (Navigator.of(context).canPop()) {
                      Navigator.of(context).pop();
                    }
                  });
                } else {
                  if (!context.read<QuizProvider>().level!.isDone) {
                    context.read<PlayerProvider>().addCoins(10);
                  }

                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder:
                        (context) => CorrectPopUp(
                          addCoin: !context.read<QuizProvider>().level!.isDone,
                        ),
                  );

                  // Auto-dismiss after 2 seconds
                  Future.delayed(Duration(milliseconds: 1200), () {
                    if (Navigator.of(context).canPop()) {
                      Navigator.of(context).pop();
                      Navigator.pop(context, true);
                    }
                  });
                }
              }
              : null,
      child: Container(
        width: width * 0.4,
        height: height * 0.05,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:
                provider.canEnter()
                    ? [colormain[900]!, colormain[700]!]
                    : [Colors.transparent, Colors.transparent],
          ),
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: colormain[900]!, width: 2),
        ),
        child: SubTitleText(
          text: 'تأكيد',
          size: 22,
          weight: FontWeight.bold,
          align: TextAlign.center,
          color: provider.canEnter() ? Colors.white : colorText,
        ),
      ),
    );
  }
}
