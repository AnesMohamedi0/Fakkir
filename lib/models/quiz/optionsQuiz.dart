import 'dart:convert';

import 'package:general_knowledge_app/models/quiz/quiz.dart';

class OptionsQuiz extends Quiz {
  List<String> options;
  List<int> answers;

  OptionsQuiz({
    required super.id,
    required super.question,
    super.imagePath,
    required super.categoryId,
    required this.options,
    required this.answers,
    required super.levelId,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'question': question,
      'imagePath': imagePath,
      'categoryId': categoryId,
      'levelId': levelId,
      'options': jsonEncode(options),
      'answers': jsonEncode(answers),
    };
  }

  static OptionsQuiz fromMap(Map<String, dynamic> map) {
    return OptionsQuiz(
      id: map['id'],
      question: map['question'],
      imagePath: map['imagePath'],
      categoryId: map['categoryId'],
      levelId: map['levelId'],
      options: List<String>.from(jsonDecode(map['options'])),
      answers: List<int>.from(jsonDecode(map['answers'])),
    );
  }

  factory OptionsQuiz.fromJson(Map<String, dynamic> json) {
    return OptionsQuiz(
      id: json['id'] as int,
      question: json['question'] as String,
      imagePath: json['imagePath'] as String?,
      categoryId: json['categoryId'] as int,
      levelId: json['levelId'] as int,
      options: List<String>.from(json['options']),
      answers: List<int>.from(json['answers']),
    );
  }
}
