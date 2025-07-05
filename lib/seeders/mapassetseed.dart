import 'package:sqflite/sqflite.dart';

Future<void> initGameMapAssets(Database db) async {
  var pairs = [
    (map: 1, asset: 1),
    (map: 1, asset: 2),
    (map: 1, asset: 5),
    (map: 2, asset: 1),
    (map: 2, asset: 4),
    (map: 2, asset: 5),
    (map: 3, asset: 3),
    (map: 3, asset: 4),
    (map: 3, asset: 5),
  ];

  for (var element in pairs) {
    await db.insert('GameMapAsset', {
      'mapId': element.map,
      'assetId': element.asset,
    }, conflictAlgorithm: ConflictAlgorithm.replace);
  }
}
