import 'package:sqflite/sqflite.dart';

Future<void> initAssets(Database db) async {
  List<String> assets = [
    'assets/images/MapAssets/lighthouse.png',
    'assets/images/MapAssets/palmtree.png',
    'assets/images/MapAssets/ship.png',
    'assets/images/MapAssets/tree.png',
    'assets/images/MapAssets/mount.png',
  ];

  for (var asset in assets) {
    await db.insert('asset', {
      'AssetPath': asset,
    }, conflictAlgorithm: ConflictAlgorithm.replace);
  }
}
