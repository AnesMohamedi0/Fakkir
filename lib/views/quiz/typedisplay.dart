import 'package:flutter/material.dart';
import 'package:general_knowledge_app/models/quiz/completeQuiz.dart';
import 'package:general_knowledge_app/models/quiz/intervalQuiz.dart';
import 'package:general_knowledge_app/models/quiz/matchingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/optionsQuiz.dart';
import 'package:general_knowledge_app/models/quiz/orderingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/quiz.dart';
import 'package:general_knowledge_app/models/quiz/selectOnQuiz.dart';
import 'package:general_knowledge_app/models/quiz/stickingQuiz.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';

class QuizTypeContainer extends StatelessWidget {
  final Quiz quiz;
  const QuizTypeContainer({super.key, required this.quiz});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        color: quizColor[quiz.runtimeType] ?? Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(horizontal: height * 0.017),
      child: SubTitleText(
        text: quizName[quiz.runtimeType] ?? '',
        size: height * 0.017,
        color: Colors.white,
        weight: FontWeight.bold,
      ),
    );
  }
}

final Map<Type, String> quizName = {
  IntervalQuiz: 'النطاق',
  CompleteQuiz: 'الإكمال',
  MatchingQuiz: 'المطابقة',
  OptionsQuiz: 'الخيارات',
  OrderingQuiz: 'الترتيب',
  SelectOnQuiz: 'التحديد',
  StickingQuiz: 'الإلصاق',
};

final Map<Type, Color> quizColor = {
  IntervalQuiz: Colors.red.shade700,
  CompleteQuiz: Colors.greenAccent.shade700,
  MatchingQuiz: Colors.cyan.shade700,
  OptionsQuiz: Colors.purple.shade700,
  OrderingQuiz: Colors.blueAccent.shade700,
  StickingQuiz: Colors.indigoAccent.shade700,
};
