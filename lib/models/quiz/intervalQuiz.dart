import 'package:general_knowledge_app/models/quiz/quiz.dart';

class IntervalQuiz extends Quiz {
  final double minInterval;
  final double maxInterval;
  final double answer;
  final double margin;

  IntervalQuiz({
    required super.id,
    required super.question,
    super.imagePath,
    required super.categoryId,
    required this.minInterval,
    required this.maxInterval,
    required this.answer,
    required this.margin,
    required super.levelId,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'question': question,
      'imagePath': imagePath,
      'categoryId': categoryId,
      'levelId': levelId,
      'minInterval': minInterval,
      'maxInterval': maxInterval,
      'answer': answer,
      'margin': margin,
    };
  }

  factory IntervalQuiz.fromMap(Map<String, dynamic> map) {
    return IntervalQuiz(
      id: map['id'] as int,
      question: map['question'] as String,
      imagePath: map['imagePath'] as String?,
      categoryId: map['categoryId'] as int,
      levelId: map['levelId'] as int,
      minInterval: (map['minInterval'] as num).toDouble(),
      maxInterval: (map['maxInterval'] as num).toDouble(),
      answer: (map['answer'] as num).toDouble(),
      margin: (map['margin'] as num).toDouble(),
    );
  }

  factory IntervalQuiz.fromJson(Map<String, dynamic> json) {
    return IntervalQuiz(
      id: json['id'] as int,
      question: json['question'] as String,
      imagePath: json['imagePath'] as String?,
      categoryId: json['categoryId'] as int,
      levelId: json['levelId'] as int,
      minInterval: (json['minInterval'] as num).toDouble(),
      maxInterval: (json['maxInterval'] as num).toDouble(),
      answer: (json['answer'] as num).toDouble(),
      margin: (json['margin'] as num).toDouble(),
    );
  }
}
