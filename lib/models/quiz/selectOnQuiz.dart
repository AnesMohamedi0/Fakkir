import 'package:general_knowledge_app/models/quiz/quiz.dart';

class SelectOnQuiz extends Quiz {
  final int answerX;
  final int answerY;
  final String assetPath;

  SelectOnQuiz({
    required super.id,
    required super.question,
    super.imagePath,
    required super.categoryId,
    required super.levelId,
    required this.answerX,
    required this.answerY,
    required this.assetPath,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'question': question,
      'imagePath': imagePath,
      'categoryId': categoryId,
      'levelId': levelId,
      'answerX': answerX,
      'answerY': answerY,
      'assetPath': assetPath,
    };
  }

  factory SelectOnQuiz.fromMap(Map<String, dynamic> map) {
    return SelectOnQuiz(
      id: map['id'] as int,
      question: map['question'] as String,
      imagePath: map['imagePath'] as String?,
      categoryId: map['categoryId'] as int,
      levelId: map['levelId'] as int,
      answerX: map['answerX'] as int,
      answerY: map['answerY'] as int,
      assetPath: map['assetPath'] as String,
    );
  }
}
