import 'dart:math';
import 'package:flutter/material.dart';
import 'package:general_knowledge_app/database/mapRepo.dart';
import 'package:general_knowledge_app/database/levelRepo.dart';
import 'package:general_knowledge_app/models/level.dart';

class AssetsProvider extends ChangeNotifier {
  List<String> assets = [];
  List<Point<double>> assetPositions = [];

  final Random _random = Random();

  void loadAssetsByMapId(int mapId) async {
    assets = await MapRepository().getAssetsByMapId(mapId);

    assetPositions = [
      Point(Random().nextDouble() * 2 + 4, Random().nextDouble() * 5 + 10),
      Point(80, Random().nextDouble() * 10 + 50),
      Point(Random().nextDouble() * 2 + 4, Random().nextDouble() * 5 + 85),
    ];

    assetPositions.shuffle();
  }

  /// Get asset position by index
  Point<double>? getAssetPositionByIndex(int index) {
    if (index >= 0 && index < assetPositions.length) {
      return assetPositions[index];
    }
    return null;
  }

  /// Get all asset positions
  List<Point<double>> getAllAssetPositions() {
    return List.from(assetPositions);
  }

  int getAssetsLength() {
    return assets.length;
  }

  getAssetByIndex(int index) {
    return assets[index];
  }

  void clear() {
    assets.clear();
    assetPositions.clear();
    notifyListeners();
  }
}
