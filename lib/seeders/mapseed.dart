import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:general_knowledge_app/models/map.dart';
import 'package:sqflite/sqflite.dart';

Future<void> initMaps(Database db) async {
  List<GameMap> maps = await LoadMapsFromJson();

  for (var map in maps) {
    await db.insert('GameMap', map.toMap());
  }

  for (var i = 1; i < maps.length; i++) {
    await db.update(
      'GameMap',
      {'mapBeforeId': maps[i - 1].id},
      where: 'id = ?',
      whereArgs: [maps[i].id],
    );
  }
}

Future<List<GameMap>> LoadMapsFromJson() async {
  print('Loading maps from JSON...');

  final String response = await rootBundle.loadString('assets/json/map.json');
  final List<dynamic> data = jsonDecode(response);

  print('Loaded ${data.length} maps from JSON.');
  return data.map((map) => GameMap.fromJson(map)).toList();
}
