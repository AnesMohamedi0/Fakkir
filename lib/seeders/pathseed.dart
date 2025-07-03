import 'dart:math';
import 'package:general_knowledge_app/models/map.dart';
import 'package:general_knowledge_app/models/path.dart';

Future<void> initPaths(GameMap gameMap) async {
  var levelList = gameMap.levels;

  List<MapPath> paths = [];

  for (var i = 1; i < levelList.length; i++) {
    final levelBefore = levelList[i - 1];
    final currentLevel = levelList[i];

    // Midpoint between the two levels
    final midX = (levelBefore.posX + currentLevel.posX) / 2;
    final midY = (levelBefore.posY + currentLevel.posY) / 2;
    final dx = currentLevel.posX - levelBefore.posX;
    final dy = currentLevel.posY - levelBefore.posY;
    final distance = sqrt(dx * dx + dy * dy);

    // Smaller, clamped offset for tighter curves
    final offset = distance.clamp(15.0, 40.0) * 0.15;

    // Perpendicular angle to the path
    final perpAngle = atan2(dy, -dx);

    // Always bulge in the same direction (+1)
    final ctrlX = midX + offset * cos(perpAngle);
    final ctrlY = midY + offset * sin(perpAngle);

    paths.add(
      MapPath(
        startX: levelBefore.posX,
        startY: levelBefore.posY,
        endX: currentLevel.posX,
        endY: currentLevel.posY,
        controlX: ctrlX,
        controlY: ctrlY,
        mapId: gameMap.id,
      ),
    );
  }

  for (var path in paths) {
    gameMap.paths.add(path);
  }
}
