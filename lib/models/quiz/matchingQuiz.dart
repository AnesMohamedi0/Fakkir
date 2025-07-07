import 'dart:convert';

import 'package:general_knowledge_app/models/quiz/quiz.dart';

class MatchingQuiz extends Quiz {
  List<String> options;
  List<String> toMatchWith;
  Map<String, int> answer;

  MatchingQuiz({
    required super.id,
    required super.question,
    super.imagePath,
    required super.categoryId,
    required this.options,
    required this.toMatchWith,
    required super.levelId,
    required this.answer,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'question': question,
      'imagePath': imagePath,
      'categoryId': categoryId,
      'levelId': levelId,
      'options': jsonEncode(options),
      'toMatchWith': jsonEncode(toMatchWith),
      'answerMap': jsonEncode(answer.map((k, v) => MapEntry(k, v.toString()))),
    };
  }

  static MatchingQuiz fromMap(Map<String, dynamic> map) {
    final Map<String, dynamic> decoded = jsonDecode(map['answerMap']);
    final answer = decoded.map((k, v) => MapEntry(k, int.parse(v)));

    return MatchingQuiz(
      id: map['id'],
      question: map['question'],
      imagePath: map['imagePath'],
      categoryId: map['categoryId'],
      levelId: map['levelId'],
      options: List<String>.from(jsonDecode(map['options'])),
      toMatchWith: List<String>.from(jsonDecode(map['toMatchWith'])),
      answer: Map<String, int>.from(answer),
    );
  }

  factory MatchingQuiz.fromJson(Map<String, dynamic> json) {
    return MatchingQuiz(
      id: json['id'] as int,
      question: json['question'] as String,
      imagePath: json['imagePath'] as String?,
      categoryId: json['categoryId'] as int,
      levelId: json['levelId'] as int,
      options: List<String>.from(json['options']),
      toMatchWith: List<String>.from(json['toMatchWith']),
      answer: (json['answerMap'] as Map<String, dynamic>).map(
        (key, value) => MapEntry(key, int.parse(value)),
      ),
    );
  }
}
