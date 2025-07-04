import 'package:general_knowledge_app/database/InitDB.dart';
import 'package:general_knowledge_app/models/map.dart';
import 'package:sqflite/sqflite.dart';

class MapRepository {
  Future<void> insertGameMap(GameMap map) async {
    final db = await initDB();

    await db.insert(
      'GameMap',
      map.toMap(),
      conflictAlgorithm: ConflictAlgorithm.ignore,
    );
  }

  Future<int?> getTheCurrentMap() async {
    final db = await initDB();
    final map = await db.query(
      'GameMap',
      where: 'isOpen = ?',
      whereArgs: [true],
      orderBy: 'id DESC',
      limit: 1,
    );
    return map.isNotEmpty ? GameMap.fromMap(map.first).id : null;
  }

  Future<GameMap?> getGameMapById(int id) async {
    final db = await initDB();

    final maps = await db.query(
      'GameMap',
      where: 'id = ?',
      whereArgs: [id],
      limit: 1,
    );

    if (maps.isNotEmpty) {
      return GameMap.fromMap(maps.first);
    } else {
      return null;
    }
  }

  Future<GameMap?> getGameMapByPosition(int position) async {
    final db = await initDB();

    final maps = await db.query(
      'GameMap',
      orderBy: 'id ASC',
      limit: 1,
      offset: position,
    );

    if (maps.isNotEmpty) {
      return GameMap.fromMap(maps.first);
    } else {
      return null;
    }
  }

  Future<void> updateGameMap(GameMap map) async {
    final db = await initDB();

    await db.update(
      'GameMap',
      map.toMap(),
      where: 'id = ?',
      whereArgs: [map.id],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> deleteGameMapById(int id) async {
    final db = await initDB();

    await db.delete('GameMap', where: 'id = ?', whereArgs: [id]);
  }

  Future<List<GameMap>> getAllGameMaps() async {
    final db = await initDB();

    final List<Map<String, dynamic>> maps = await db.query('GameMap');

    final List<GameMap> gameMaps =
        maps.map((map) => GameMap.fromMap(map)).toList();

    return gameMaps;
  }

  Future<void> deleteAllMaps() async {
    final db = await initDB();
    db.delete('GameMap');
  }

  Future<void> setMapsBefore(int mapId, int mapBeforeId) async {
    final db = await initDB();
    db.update(
      'GameMap',
      {'mapBeforeId': mapBeforeId},
      where: 'id = ?',
      whereArgs: [mapId],
    );
  }

  Future<void> setMapOpen(int mapId) async {
    final db = await initDB();
    db.update('GameMap', {'isOpen': 1}, where: 'id = ?', whereArgs: [mapId]);
  }

  Future<void> setMapDone(int mapId) async {
    final db = await initDB();
    db.update('GameMap', {'isDone': 1}, where: 'id = ?', whereArgs: [mapId]);
  }

  Future<int> getMapsCount() async {
    try {
      final db = await initDB();
      final result = await db.rawQuery('SELECT count(*) FROM GameMap');
      return Sqflite.firstIntValue(result) ?? 0;
    } catch (e) {
      // Handle or log the error, and return a default value
      return 0;
    }
  }

  Future<bool> isMapTheLast(GameMap map) async {
    var maps = await getAllGameMaps();
    for (var element in maps) {
      if (element.mapBeforeId == map.id) {
        return true;
      }
    }
    return false;
  }

  Future<void> incrementMapProgress(GameMap map) async {
    final db = await initDB();
    await db.update(
      'GameMap',
      {'progress': map.progress + 1},
      where: 'id = ?',
      whereArgs: [map.id],
    );
  }
}
