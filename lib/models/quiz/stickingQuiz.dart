import 'dart:convert';

import 'package:general_knowledge_app/models/quiz/quiz.dart';

class StickingQuiz extends Quiz {
  String answer;
  List<String> options;

  StickingQuiz({
    required super.id,
    required super.question,
    super.imagePath,
    required super.categoryId,
    required super.levelId,
    required this.answer,
    required this.options,
  });

  @override
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'question': question,
      'imagePath': imagePath,
      'categoryId': categoryId,
      'levelId': levelId,
      'answer': answer,
      'options': jsonEncode(options),
    };
  }

  static StickingQuiz fromMap(Map<String, dynamic> map) {
    return StickingQuiz(
      id: map['id'],
      question: map['question'],
      imagePath: map['imagePath'],
      categoryId: map['categoryId'],
      levelId: map['levelId'],
      answer: map['answer'],
      options: List<String>.from(jsonDecode(map['options'])),
    );
  }
}
