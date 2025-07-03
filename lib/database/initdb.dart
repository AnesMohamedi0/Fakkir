import 'package:general_knowledge_app/models/map.dart';
import 'package:general_knowledge_app/seeders/levelseed.dart';
import 'package:general_knowledge_app/seeders/mapseed.dart';
import 'package:general_knowledge_app/seeders/quizseed.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> initDB() async {
  final dbPath = await getDatabasesPath();
  final path = join(dbPath, 'my_database.db');

  return openDatabase(
    path,
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''
      CREATE TABLE GameMap (
        id INTEGER PRIMARY KEY,
        name TEXT,
        isOpen INTEGER,
        isDone INTEGER,
        mapBeforeId INTEGER,
        backgroundImagePath TEXT,
        difficulty INTEGER,
        progress INTEGER,
        FOREIGN KEY (mapBeforeId) REFERENCES GameMap(id)
      )
    ''');

      await db.execute('''
      CREATE TABLE Level (
        id INTEGER PRIMARY KEY,
        name TEXT,
        isOpen INTEGER,
        isDone INTEGER,
        posX REAL,
        posY REAL,
        levelBeforeId INTEGER,
        mapId INTEGER NOT NULL,
        FOREIGN KEY (levelBeforeId) REFERENCES Level(id),
        FOREIGN KEY (mapId) REFERENCES GameMap(id)
      )
    ''');

      // Options Quiz Table
      await db.execute('''
CREATE TABLE optionsQuiz (
  id INTEGER PRIMARY KEY,
  question TEXT NOT NULL,
  imagePath TEXT,
  categoryId INTEGER NOT NULL,
  levelId INTEGER NOT NULL,
  options TEXT NOT NULL,         -- JSON List<String>
  answers TEXT NOT NULL,         -- JSON List<int>
  FOREIGN KEY (categoryId) REFERENCES quizCategory(id),
  FOREIGN KEY (levelId) REFERENCES Level(id)
)
''');

      // Ordering Quiz Table
      await db.execute('''
CREATE TABLE orderingQuiz (
  id INTEGER PRIMARY KEY,
  question TEXT NOT NULL,
  imagePath TEXT,
  categoryId INTEGER NOT NULL,
  levelId INTEGER NOT NULL,
  options TEXT NOT NULL,         -- JSON List<String>
  correctOrder TEXT NOT NULL,    -- JSON List<int>
  FOREIGN KEY (categoryId) REFERENCES quizCategory(id),
  FOREIGN KEY (levelId) REFERENCES Level(id)
)
''');

      // Matching Quiz Table
      await db.execute('''
CREATE TABLE matchingQuiz (
  id INTEGER PRIMARY KEY,
  question TEXT NOT NULL,
  imagePath TEXT,
  categoryId INTEGER NOT NULL,
  levelId INTEGER NOT NULL,
  options TEXT NOT NULL,         -- JSON List<String>
  toMatchWith TEXT NOT NULL,     -- JSON List<String>
  answerMap TEXT NOT NULL,       -- JSON Map<int, String>
  FOREIGN KEY (categoryId) REFERENCES quizCategory(id),
  FOREIGN KEY (levelId) REFERENCES Level(id)
)
''');

      // Complete Quiz Table
      await db.execute('''
CREATE TABLE completeQuiz (
  id INTEGER PRIMARY KEY,
  question TEXT NOT NULL,
  imagePath TEXT,
  categoryId INTEGER NOT NULL,
  levelId INTEGER NOT NULL,
  answer TEXT NOT NULL,
  FOREIGN KEY (categoryId) REFERENCES quizCategory(id),
  FOREIGN KEY (levelId) REFERENCES Level(id)
)
''');

      // Select On Quiz Table (column names unified)
      await db.execute('''
CREATE TABLE selectOnQuiz (
  id INTEGER PRIMARY KEY,
  question TEXT NOT NULL,
  imagePath TEXT,
  categoryId INTEGER NOT NULL,
  levelId INTEGER NOT NULL,
  answerX INTEGER NOT NULL,
  answerY INTEGER NOT NULL,
  assetPath TEXT NOT NULL,
  FOREIGN KEY (categoryId) REFERENCES quizCategory(id),
  FOREIGN KEY (levelId) REFERENCES Level(id)
)
''');

      // Interval Quiz Table (column names unified)
      await db.execute('''
CREATE TABLE intervalQuiz (
  id INTEGER PRIMARY KEY,
  question TEXT NOT NULL,
  imagePath TEXT,
  categoryId INTEGER NOT NULL,
  levelId INTEGER NOT NULL,
  minInterval REAL NOT NULL,
  maxInterval REAL NOT NULL,
  answer REAL NOT NULL,
  margin REAL NOT NULL,
  FOREIGN KEY (categoryId) REFERENCES quizCategory(id),
  FOREIGN KEY (levelId) REFERENCES Level(id)
)
''');

      await initMaps(db);

      var maps = await db.query('GameMap');
      for (var element in maps) {
        GameMap gameMap = GameMap.fromMap(element);
        await initLevelsForMap(gameMap, db);
      }
      print("seeding quiz");

      await initQuiz(db);
      print("quiz seeded");
    },
  );
}
