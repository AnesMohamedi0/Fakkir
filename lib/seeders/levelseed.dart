import 'dart:math';
import 'package:general_knowledge_app/database/levelRepo.dart';
import 'package:general_knowledge_app/database/mapRepo.dart';
import 'package:general_knowledge_app/models/level.dart';
import 'package:general_knowledge_app/models/map.dart';
import 'package:sqflite/sqflite.dart';

MapRepository mapRepository = MapRepository();
LevelRepository levelRepository = LevelRepository();

List<Level> generateRandomLevels(GameMap map) {
  final Random rand = Random();
  List<Level> levels = [];

  // Define original min/max for normalization
  const int xMin = 30;
  const int xMax = 330;
  const int yMin = 183;
  const int yMax = 753;
  double normalizeX(int x) => ((x - xMin) / (xMax - xMin)) * 100;
  double normalizeY(int y) => ((y - yMin) / (yMax - yMin)) * 100;

  // Level 1: fixed start
  int x = 183;
  int y = 753;
  levels.add(
    Level(
      name: "المرحلة 1",
      id: 1 + map.id * 100,
      isOpen: true,
      isDone: false,
      posX: normalizeX(x),
      posY: normalizeY(y),
      mapId: map.id,
    ),
  );

  bool moveRight;
  bool moveRightLast = true;

  for (int i = 2; i <= 10; i++) {
    // Special fixed positions for levels 6 and 9
    if (i == 6) {
      x = 10; // Fixed x position for level 6
    } else if (i == 9) {
      x = 70; // Fixed x position for level 9
    } else {
      // Normal random generation for other levels
      if (330 - x < 60) {
        moveRight = false;
      } else if (x - 30 < 60) {
        moveRight = true;
      } else {
        moveRight = rand.nextDouble() < 0 ? !moveRightLast : moveRightLast;
      }
      moveRightLast = moveRight;

      int addedX = rand.nextInt(30);
      int deltaX;
      if (moveRight) {
        deltaX = addedX + 60;
      } else {
        deltaX = -(addedX + 60);
      }
      int newX = x + deltaX;
      x = newX.clamp(30, 330);
    }

    if (i == 10) {
      y = 183;
    } else {
      // Calculate Y position based on level progression
      if (i == 6) {
        x = 30;
      } else if (i == 9) {
        x = 300;
      } else if (i == 3) {
        x = 330;
      }
      // Normal Y calculation for other levels
      int addedX = rand.nextInt(40);
      double addedY = 22 - addedX / 3;
      y = y - addedY.toInt() - 48;
    }

    levels.add(
      Level(
        name: "المرحلة $i",
        id: i + map.id * 100,
        isOpen: false,
        isDone: false,
        posX: normalizeX(x),
        posY: normalizeY(y),
        mapId: map.id,
      ),
    );
  }

  return levels;
}

Future<void> initLevelsForMap(GameMap map, Database db) async {
  List<Level> levels = generateRandomLevels(map);

  for (var element in levels) {
    await db.insert('Level', element.toMap());
  }

  for (var i = 1; i < levels.length; i++) {
    await db.update(
      'Level',
      {'levelBeforeId': levels[i - 1].id},
      where: 'id = ?',
      whereArgs: [levels[i].id],
    );
  }
}
