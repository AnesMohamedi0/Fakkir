import 'dart:math';
import 'package:flutter/material.dart';
import 'package:general_knowledge_app/database/assetMapRepo.dart';
import 'package:general_knowledge_app/database/mapRepo.dart';
import 'package:general_knowledge_app/database/levelRepo.dart';
import 'package:general_knowledge_app/models/MapAsset.dart';
import 'package:general_knowledge_app/models/level.dart';

class AssetsProvider extends ChangeNotifier {
  List<MapAsset> assets = [];

  void loadAssetsByMapId(int mapId) async {
    assets = await AssetMapRepository().getAssetsByMapId(mapId);
    notifyListeners();
  }

  /// Get asset position by index
  Point<double>? getAssetPositionByIndex(int index) {
    if (index >= 0 && index < assets.length) {
      return Point(assets[index].posX, assets[index].posY);
    }
    return null;
  }

  int getAssetsLength() {
    return assets.length;
  }

  getAssetByIndex(int index) {
    return assets[index];
  }

  void clear() {
    assets.clear();
    notifyListeners();
  }
}
