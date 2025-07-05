import 'dart:math';

import 'package:general_knowledge_app/database/initdb.dart';
import 'package:general_knowledge_app/models/MapAsset.dart';

class AssetMapRepository {
  Future<List<MapAsset>> getAssetsByMapId(int mapId) async {
    final db = await initDB();
    final result = await db.rawQuery(
      'Select A.AssetPath, G.posX, G.posY from Asset A , GameMapAsset G where A.id = G.assetId and G.mapId = ?',
      [mapId],
    );

    return result.map((row) {
      return MapAsset(
        assetPath: row['AssetPath'] as String,
        posX: row['posX'] as double,
        posY: row['posY'] as double,
      );
    }).toList();
  }

  Future<String> getRandomAsset() async {
    final db = await initDB();
    int count = await db.rawQuery('Select Count(*) As count from Asset') as int;

    int random = Random().nextInt(count);

    return await db.rawQuery('Select AssetPath from Asset Where id = ?', [
          random,
        ])
        as String;
  }
}
