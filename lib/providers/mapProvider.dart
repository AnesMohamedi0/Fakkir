import 'package:flutter/material.dart';
import 'package:general_knowledge_app/database/levelRepo.dart';
import 'package:general_knowledge_app/database/mapRepo.dart';
import 'package:general_knowledge_app/models/map.dart';

class MapProvider extends ChangeNotifier {
  final List<GameMap> _maps = [];
  bool _isLoading = true;

  addMap(GameMap map) {
    _maps.add(map);
    notifyListeners();
  }

  getMapByIndex(int index) {
    return _maps[index];
  }

  getMapById(int id) {
    try {
      // Use where().firstOrNull or handle the case when no element is found
      final results = _maps.where((element) => element.id == id);
      if (results.isEmpty) {
        print('No map found with id: $id'); // Debug print
        return null;
      }
      return results.first;
    } catch (e) {
      print('Error getting map by id $id: $e');
      return null;
    }
  }

  updateMap(GameMap map) {
    final index = _maps.indexWhere((element) => element.id == map.id);
    if (index != -1) {
      _maps[index] = map;
      notifyListeners();
    }
    MapRepository().updateGameMap(map);
  }

  Future<void> loadMapsIncrementally() async {
    MapRepository mapRepository = MapRepository();
    int n = await mapRepository.getMapsCount();

    for (int i = 0; i < n; i++) {
      final map = await mapRepository.getGameMapByPosition(i);
      if (map != null) ;
      _maps.add(map!);
      notifyListeners();
    }
    _isLoading = false;
    notifyListeners();
  }

  Future<void> updateMaps() async {
    _isLoading = true;

    _maps.clear();

    await loadMapsIncrementally();

    notifyListeners();
  }

  getMaps() {
    return _maps;
  }

  getMapsLength() {
    return _maps.length;
  }

  setIsLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  setMapOpenByIndex(int index) {
    _maps[index].isOpen = true;
    notifyListeners();
  }

  setMapDoneByIndex(int index) {
    _maps[index].isDone = true;
    notifyListeners();
  }

  setMapDoneById(int id) {
    _maps.firstWhere((element) => element.id == id).isDone = true;

    notifyListeners();
    MapRepository().setMapDone(id);
  }

  setMapOpenById(int id) {
    _maps.firstWhere((element) => element.id == id).isDone = true;

    notifyListeners();
    MapRepository().setMapOpen(id);
  }

  setLevelOpenById(int id) {
    for (var element in _maps.where((element) => element.levels.isNotEmpty)) {
      for (var level in element.levels) {
        if (level.id == id) {
          level.isOpen = true;
          break;
        }
      }
    }

    LevelRepository levelRepository = LevelRepository();

    levelRepository.setLevelOpen(id);

    notifyListeners();
  }

  setLevelDoneById(int id) {
    for (var element in _maps.where((element) => element.levels.isNotEmpty)) {
      for (var level in element.levels) {
        if (level.id == id) {
          level.isDone = true;
          break;
        }
      }
    }

    LevelRepository levelRepository = LevelRepository();
    levelRepository.setLevelDone(id);

    notifyListeners();
  }

  incrementMapProgress(GameMap map) {
    final localMap = _maps.firstWhere((element) => element.id == map.id);
    localMap.progress++;
    MapRepository().updateGameMap(localMap);
    notifyListeners();
  }

  getIsLoading() {
    return _isLoading;
  }

  deleteAllMaps() async {
    _maps.clear();
  }
}
