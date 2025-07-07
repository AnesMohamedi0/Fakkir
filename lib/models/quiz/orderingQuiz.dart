import 'dart:convert';

import 'package:general_knowledge_app/models/quiz/quiz.dart';

class OrderingQuiz extends Quiz {
  List<String> options;
  List<int> correctOrder;

  OrderingQuiz({
    required super.id,
    required super.question,
    super.imagePath,
    required super.categoryId,
    required this.options,
    required this.correctOrder,
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
      'correctOrder': jsonEncode(correctOrder),
    };
  }

  static OrderingQuiz fromMap(Map<String, dynamic> map) {
    return OrderingQuiz(
      id: map['id'],
      question: map['question'],
      imagePath: map['imagePath'],
      categoryId: map['categoryId'],
      levelId: map['levelId'],
      options: List<String>.from(jsonDecode(map['options'])),
      correctOrder: List<int>.from(jsonDecode(map['correctOrder'])),
    );
  }

  factory OrderingQuiz.fromJson(Map<String, dynamic> json) {
    return OrderingQuiz(
      id: json['id'] as int,
      question: json['question'] as String,
      imagePath: json['imagePath'] as String?,
      categoryId: json['categoryId'] as int,
      levelId: json['levelId'] as int,
      options: List<String>.from(json['options']),
      correctOrder: List<int>.from(json['correctOrder']),
    );
  }
}
