import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:general_knowledge_app/models/quiz/completeQuiz.dart';
import 'package:general_knowledge_app/models/quiz/intervalQuiz.dart';
import 'package:general_knowledge_app/models/quiz/matchingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/optionsQuiz.dart';
import 'package:general_knowledge_app/models/quiz/orderingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/quiz.dart';
import 'package:general_knowledge_app/models/quiz/stickingQuiz.dart';
import 'package:sqflite/sqflite.dart';

Future<void> initQuiz(Database db) async {
  List<Quiz> quizzes = await LoadQuizzesFromJson();

  final Map<Type, String> quizTableMap = {
    IntervalQuiz: 'intervalQuiz',
    CompleteQuiz: 'completeQuiz',
    MatchingQuiz: 'matchingQuiz',
    OptionsQuiz: 'optionsQuiz',
    OrderingQuiz: 'orderingQuiz',
    StickingQuiz: 'stickingQuiz',
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

Future<List<Quiz>> LoadQuizzesFromJson() async {
  List<Quiz> quizzes = [];
  print('Loading quizzes from JSON...');

  //complete quiz

  print('loading complete quiz from json');

  String response = await rootBundle.loadString('assets/json/complete.json');
  print('loaded');
  List<dynamic> data = jsonDecode(response);

  quizzes += data.map((quiz) => CompleteQuiz.fromJson(quiz)).toList();

  print('Loaded ${data.length} complete from JSON.');

  //interval quiz

  print('loading interval quiz from json');

  response = await rootBundle.loadString('assets/json/interval.json');
  data = jsonDecode(response);
  quizzes += data.map((quiz) => IntervalQuiz.fromJson(quiz)).toList();

  print('Loaded ${data.length} interval from JSON.');

  //options quiz

  print('loading options quiz from json');

  response = await rootBundle.loadString('assets/json/options.json');
  data = jsonDecode(response);
  quizzes += data.map((quiz) => OptionsQuiz.fromJson(quiz)).toList();

  print('Loaded ${data.length} options from JSON.');

  //matching quiz

  print('loading matching quiz from json');

  response = await rootBundle.loadString('assets/json/matching.json');
  data = jsonDecode(response);
  quizzes += data.map((quiz) => MatchingQuiz.fromJson(quiz)).toList();

  print('Loaded ${data.length} matching from JSON.');

  // ordering quiz

  print('loading ordering quiz from json');

  response = await rootBundle.loadString('assets/json/ordering.json');
  data = jsonDecode(response);
  quizzes += data.map((quiz) => OrderingQuiz.fromJson(quiz)).toList();

  print('Loaded ${data.length} ordering from JSON.');

  // sticking quiz

  print('loading ordering quiz from json');

  response = await rootBundle.loadString('assets/json/sticking.json');
  data = jsonDecode(response);
  quizzes += data.map((quiz) => StickingQuiz.fromJson(quiz)).toList();

  print('Loaded ${data.length} sticking from JSON.');

  return quizzes;
}
