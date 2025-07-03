import 'package:general_knowledge_app/models/quiz/quiz.dart';

class Level {
  int id;
  String name;
  bool isOpen;
  bool isDone;
  double posX;
  double posY;
  List<Level> levelsAfter = [];
  int? levelBeforeId;
  Quiz? quiz;
  int mapId;

  Level({
    required this.name,
    required this.id,
    required this.isOpen,
    required this.isDone,
    this.levelBeforeId,
    this.quiz,
    required this.posX,
    required this.posY,
    required this.mapId,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'isOpen': isOpen ? 1 : 0,
      'isDone': isDone ? 1 : 0,
      'posX': posX,
      'posY': posY,
      'levelBeforeId': levelBeforeId ?? 0,
      'mapId': mapId,
    };
  }

  static Level fromMap(Map<String, dynamic> map) {
    return Level(
      id: map['id'],
      name: map['name'],
      isOpen: map['isOpen'] == 1,
      isDone: map['isDone'] == 1,
      posX: map['posX'],
      posY: map['posY'],
      levelBeforeId: map['levelBeforeId'] ?? null,
      mapId: map['mapId'],
    );
  }

  void addLevelBefore(Level level) {
    levelsAfter.add(level);
  }
}

class LevelController {
  List<Level> levels = [];
  void addLevel(Level level) {
    levels.add(level);
  }

  void removeLevel(Level level) {
    levels.remove(level);
  }

  Level? getLevelById(int id) {
    try {
      return levels.firstWhere((level) => level.id == id);
    } catch (e) {
      return null;
    }
  }

  List<Level> getAllLevels() {
    return List.unmodifiable(levels);
  }

  void updateLevel(Level updatedLevel) {
    int index = levels.indexWhere((level) => level.id == updatedLevel.id);
    if (index != -1) {
      levels[index] = updatedLevel;
    }
  }

  void markLevelAsDone(int id) {
    Level? level = getLevelById(id);
    if (level != null) {
      level.isDone = true;
    }
  }

  void openLevel(int id) {
    Level? level = getLevelById(id);
    if (level != null) {
      level.isOpen = true;
    }
  }

  void closeLevel(int id) {
    Level? level = getLevelById(id);
    if (level != null) {
      level.isOpen = false;
    }
  }
}
