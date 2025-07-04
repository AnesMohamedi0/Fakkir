import 'package:general_knowledge_app/models/quiz/completeQuiz.dart';
import 'package:general_knowledge_app/models/quiz/intervalQuiz.dart';
import 'package:general_knowledge_app/models/quiz/matchingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/optionsQuiz.dart';
import 'package:general_knowledge_app/models/quiz/orderingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/quiz.dart';
import 'package:general_knowledge_app/models/quiz/selectOnQuiz.dart';
import 'package:general_knowledge_app/seeders/quizBymap.dart/arabicGulf.dart';
import 'package:general_knowledge_app/seeders/quizBymap.dart/egyptSudan.dart';
import 'package:general_knowledge_app/seeders/quizBymap.dart/levant.dart';
import 'package:general_knowledge_app/seeders/quizBymap.dart/maghreb.dart';
import 'package:general_knowledge_app/seeders/quizBymap.dart/bulkans.dart';
import 'package:general_knowledge_app/seeders/quizBymap.dart/southEu.dart';
import 'package:general_knowledge_app/seeders/quizBymap.dart/turkeyGreece.dart';
import 'package:sqflite/sqflite.dart';

Future<void> initQuiz(Database db) async {
  List<Quiz> quizzes = [];

  quizzes += quizMapMaghreb;
  quizzes += quizMapEgyptSudan;
  quizzes += quizMapArabicGulf;
  quizzes += quizMapTurkeyGreece;
  quizzes += quizMapLevant;
  quizzes += quizMapBulkans;
  quizzes += quizMapSouthEu;

  final Map<Type, String> quizTableMap = {
    IntervalQuiz: 'intervalQuiz',
    CompleteQuiz: 'completeQuiz',
    MatchingQuiz: 'matchingQuiz',
    OptionsQuiz: 'optionsQuiz',
    OrderingQuiz: 'orderingQuiz',
    SelectOnQuiz: 'selectOnQuiz',
  };
  for (var quiz in quizzes) {
    final table = quizTableMap[quiz.runtimeType];

    if (table != null) {
      await db.insert(
        table,
        quiz.toMap(),
        conflictAlgorithm: ConflictAlgorithm.ignore,
      );
    }
  }
}
