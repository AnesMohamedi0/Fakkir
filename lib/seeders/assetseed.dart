import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';

Future<void> initAssets(Database db) async {
  print('inserting assets');
  List<String> assets = await LoadAssetsFromJson();

  for (var asset in assets) {
    await db.insert('asset', {
      'AssetPath': asset,
    }, conflictAlgorithm: ConflictAlgorithm.replace);
  }
}

Future<List<String>> LoadAssetsFromJson() async {
  List<String> assets = [];
  var reponse = await rootBundle.loadString('assets/json/asset.json');
  var data = jsonDecode(reponse);
  assets = List<String>.from(data);

  print('added ${data.length} assets');
  return assets;
}
