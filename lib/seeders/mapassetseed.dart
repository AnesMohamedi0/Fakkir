import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:general_knowledge_app/models/level.dart';
import 'package:sqflite/sqflite.dart';

Future<void> initGameMapAssets(Database db) async {
  initFromJson(db);
}

Future<void> initFromJson(Database db) async {
  print('inserting map assets');
  var reponse = await rootBundle.loadString('assets/json/assetmap.json');
  var data = jsonDecode(reponse);

  for (var element in data) {
    await insertMapAssets(
      element['mapId'] as int,
      List<int>.from(element['assetIds']),
      db,
    );
  }
}

Future<void> insertMapAssets(int mapId, List<int> assetIds, Database db) async {
  final List<Map<String, dynamic>> levels = await db.query(
    'Level',
    where: 'mapId = ?',
    whereArgs: [mapId],
  );

  final List<Level> levelList =
      levels.map((map) => Level.fromMap(map)).toList();

  if (levelList.length <= 8) {
    return;
  }

  // ✅ Choose specific levels
  final Level l1 = levelList[1];
  final Level l2 = levelList[5];
  final Level l3 = levelList[8];

  double x1 = 15;
  double x2 = 80;
  double x3 = 20;

  await db.insert('GameMapAsset', {
    'mapId': mapId,
    'assetId': assetIds[0],
    'posX': x1,
    'posY': l1.posY - 15,
  }, conflictAlgorithm: ConflictAlgorithm.replace);

  await db.insert('GameMapAsset', {
    'mapId': mapId,
    'assetId': assetIds[1],
    'posX': x2,
    'posY': l2.posY - 7,
  }, conflictAlgorithm: ConflictAlgorithm.replace);

  await db.insert('GameMapAsset', {
    'mapId': mapId,
    'assetId': assetIds[2],
    'posX': x3,
    'posY': l3.posY,
  }, conflictAlgorithm: ConflictAlgorithm.replace);
}
