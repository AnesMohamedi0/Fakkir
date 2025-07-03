import 'package:general_knowledge_app/database/initdb.dart';
import 'package:general_knowledge_app/models/level.dart';
import 'package:sqflite/sqflite.dart';

class LevelRepository {
  Future<void> insertLevel(Level level) async {
    final db = await initDB();

    await db.insert(
      'Level',
      level.toMap(),
      conflictAlgorithm: ConflictAlgorithm.ignore,
    );

    print("level inserted");
  }

  Future<Level?> getLevelById(int id) async {
    final db = await initDB();

    final maps = await db.query(
      'Level',
      where: 'id = ?',
      whereArgs: [id],
      limit: 1,
    );

    if (maps.isNotEmpty) {
      return Level.fromMap(maps.first);
    } else {
      return null;
    }
  }

  Future<void> updateLevel(Level level) async {
    final db = await initDB();

    await db.update(
      'Level',
      level.toMap(),
      where: 'id = ?',
      whereArgs: [level.id],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> deleteLevelById(int id) async {
    final db = await initDB();

    await db.delete('Level', where: 'id = ?', whereArgs: [id]);
  }

  Future<List<Level>> getAllLevels() async {
    final db = await initDB();

    final List<Map<String, dynamic>> levels = await db.query('Level');

    final List<Level> levelList =
        levels.map((map) => Level.fromMap(map)).toList();

    return levelList;
  }

  Future<List<Level>> getAllLevelsForMapId(int mapId) async {
    final db = await initDB();

    final List<Map<String, dynamic>> levels = await db.query(
      'Level',
      where: 'mapId = ?',
      whereArgs: [mapId],
    );

    final List<Level> levelList =
        levels.map((map) => Level.fromMap(map)).toList();

    return levelList;
  }

  Future<void> deleteAllLevels() async {
    final db = await initDB();
    db.delete('Level');
  }

  Future<void> setLevelBefore(int levelId, int levelBeforeId) async {
    final db = await initDB();
    db.update(
      'Level',
      {'levelBeforeId': levelBeforeId},
      where: 'id = ?',
      whereArgs: [levelId],
    );
  }

  Future<void> setLevelOpen(int levelId) async {
    final db = await initDB();
    db.update('Level', {'isOpen': 1}, where: 'id = ?', whereArgs: [levelId]);
  }

  Future<void> setLevelDone(int levelId) async {
    final db = await initDB();
    db.update('Level', {'isDone': 1}, where: 'id = ?', whereArgs: [levelId]);
  }

  Future<bool> isLevelTheLast(Level level) async {
    var levels = await getAllLevelsForMapId(level.mapId);

    for (var element in levels) {
      if (level.id == element.levelBeforeId) {
        return false;
      }
    }

    return true;
  }
}
