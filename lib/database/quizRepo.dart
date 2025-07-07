import 'package:general_knowledge_app/database/initdb.dart';
import 'package:general_knowledge_app/models/quiz/completeQuiz.dart';
import 'package:general_knowledge_app/models/quiz/intervalQuiz.dart';
import 'package:general_knowledge_app/models/quiz/matchingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/optionsQuiz.dart';
import 'package:general_knowledge_app/models/quiz/orderingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/quiz.dart';
import 'package:general_knowledge_app/models/quiz/stickingQuiz.dart';
import 'package:sqflite/sqflite.dart';

final Map<Type, String> quizTableMap = {
  IntervalQuiz: 'intervalQuiz',
  CompleteQuiz: 'completeQuiz',
  MatchingQuiz: 'matchingQuiz',
  OptionsQuiz: 'optionsQuiz',
  OrderingQuiz: 'orderingQuiz',
  StickingQuiz: 'stickingQuiz',
};

class QuizRepository {
  Future<void> insertQuiz(Quiz quiz) async {
    final db = await initDB();
    final table = quizTableMap[quiz.runtimeType];

    if (table != null) {
      await db.insert(
        table,
        quiz.toMap(),
        conflictAlgorithm: ConflictAlgorithm.ignore,
      );
      return;
    }
  }

  Future<Quiz?> getQuizByLevelId(int levelId) async {
    final db = await initDB();

    var quiz = await db.query(
      'completeQuiz',
      where: 'levelId = ?',
      whereArgs: [levelId],
      limit: 1,
    );

    if (quiz.isNotEmpty) {
      return CompleteQuiz.fromMap(quiz.first);
    }

    quiz = await db.query(
      'intervalQuiz',
      where: 'levelId = ?',
      whereArgs: [levelId],
      limit: 1,
    );

    if (quiz.isNotEmpty) {
      return IntervalQuiz.fromMap(quiz.first);
    }

    quiz = await db.query(
      'orderingQuiz',
      where: 'levelId = ?',
      whereArgs: [levelId],
      limit: 1,
    );

    if (quiz.isNotEmpty) {
      return OrderingQuiz.fromMap(quiz.first);
    }

    quiz = await db.query(
      'matchingQuiz',
      where: 'levelId = ?',
      whereArgs: [levelId],
      limit: 1,
    );

    if (quiz.isNotEmpty) {
      return MatchingQuiz.fromMap(quiz.first);
    }

    quiz = await db.query(
      'optionsQuiz',
      where: 'levelId = ?',
      whereArgs: [levelId],
      limit: 1,
    );

    if (quiz.isNotEmpty) {
      return OptionsQuiz.fromMap(quiz.first);
    }

    quiz = await db.query(
      'stickingQuiz',
      where: 'levelId = ?',
      whereArgs: [levelId],
      limit: 1,
    );

    if (quiz.isNotEmpty) {
      return StickingQuiz.fromMap(quiz.first);
    }

    return null;
  }

  Future<void> deleteQuiz(Quiz quiz) async {
    final db = await initDB();
    final table = quizTableMap[quiz.runtimeType];

    if (table != null) {
      await db.delete(table, where: 'id = ?', whereArgs: [quiz.id]);
    }
  }

  getQuizByMapId(int mapId) async {
    List<Quiz> quizzes = [];
    for (int i = mapId * 101; i <= mapId * 100 + 10; i++) {
      Quiz? quiz = await getQuizByLevelId(i);
      quizzes.add(quiz!);
    }
    return quizzes;
  }
}
