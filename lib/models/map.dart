import 'package:general_knowledge_app/models/level.dart';
import 'package:general_knowledge_app/models/path.dart';

class GameMap {
  int id;
  String name;
  bool isOpen;
  bool isDone;
  int? mapBeforeId;
  List<Level> levels = [];
  List<MapPath> paths = [];
  int difficulty;
  int progress;

  GameMap({
    required this.id,
    required this.name,
    this.mapBeforeId,
    this.isOpen = false,
    this.isDone = false,
    required this.difficulty,
    this.progress = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'isOpen': isOpen ? 1 : 0,
      'isDone': isDone ? 1 : 0,
      'mapBeforeId': mapBeforeId,
      'difficulty': difficulty,
      'progress': progress,
    };
  }

  static GameMap fromMap(Map<String, dynamic> map) {
    return GameMap(
      id: map['id'],
      name: map['name'],
      isOpen: map['isOpen'] == 1,
      isDone: map['isDone'] == 1,
      mapBeforeId: map['mapBeforeId'],
      difficulty: map['difficulty'],
      progress: map['progress'],
    );
  }

  void addLevel(Level level) {
    levels.add(level);
  }

  void incrementProgress() {
    progress++;
  }

  double getMapsProgress() {
    if (levels.isEmpty) {
      return 0;
    }
    int a = 0;
    for (var element in levels) {
      if (element.isDone) a++;
    }

    return a / levels.length * 100;
  }

  String difficultyToString() {
    if (difficulty < 25) {
      return 'سهل';
    } else if (difficulty < 50) {
      return 'متوسط';
    } else if (difficulty < 75) {
      return 'صعب';
    } else if (difficulty < 90) {
      return 'صعب جدًا';
    } else {
      return 'مستحيل';
    }
  }
}
