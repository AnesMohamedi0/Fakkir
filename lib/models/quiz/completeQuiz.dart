import 'package:general_knowledge_app/models/quiz/quiz.dart';

class CompleteQuiz extends Quiz {
  String answer;

  CompleteQuiz({
    required super.id,
    required super.question,
    super.imagePath,
    required super.categoryId,
    required this.answer,
    required super.levelId,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'question': question,
      'imagePath': imagePath,
      'categoryId': categoryId,
      'levelId': levelId,
      'answer': answer,
    };
  }

  static CompleteQuiz fromMap(Map<String, dynamic> map) {
    return CompleteQuiz(
      id: map['id'],
      question: map['question'],
      imagePath: map['imagePath'],
      categoryId: map['categoryId'],
      levelId: map['levelId'],
      answer: map['answer'],
    );
  }
}
