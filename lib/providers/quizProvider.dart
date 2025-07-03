import 'package:flutter/foundation.dart';
import 'package:general_knowledge_app/database/levelRepo.dart';
import 'package:general_knowledge_app/database/mapRepo.dart';
import 'package:general_knowledge_app/models/level.dart';
import 'package:general_knowledge_app/models/map.dart';
import 'package:general_knowledge_app/models/quiz/quiz.dart';

class QuizProvider extends ChangeNotifier {
  Quiz? quiz;
  Level? level;
  GameMap? map;

  setQuiz(Quiz quiz) async {
    this.quiz = quiz;
    level = await LevelRepository().getLevelById(quiz.levelId);
    map = await MapRepository().getGameMapById(level!.mapId);

    notifyListeners();
  }

  clearQuiz() {
    quiz = null;
    level = null;
    map = null;

    notifyListeners();
  }
}
