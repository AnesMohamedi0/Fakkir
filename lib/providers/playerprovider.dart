import 'dart:async';

import 'package:flutter/material.dart';
import 'package:general_knowledge_app/main.dart';
import 'package:general_knowledge_app/models/player.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PlayerProvider extends ChangeNotifier {
  Player? player;
  Timer? _heartTimer;
  DateTime? _lastHeartStart;
  String? _lastPlayed;

  void setPlayer(Player newPlayer) {
    player = newPlayer;
    if (!hasMaxHearts()) {
      startHeartTimer();
    }
    notifyListeners();
  }

  Player? getPlayer() {
    return player ?? null;
  }

  addCoins(int coins) {
    player!.coins = player!.coins! + coins;
    if (player!.coins! > 9999) player!.coins = 9999;
    savePlayerData(coins: player!.coins);
    notifyListeners();
  }

  addHeart() {
    if (player!.hearts! >= 5) {
      _heartTimer?.cancel();
      return;
    }

    player!.hearts = player!.hearts! + 1;
    notifyListeners();

    savePlayerData(hearts: player!.hearts);
  }

  removeHeart() {
    player!.hearts = player!.hearts! - 1;
    notifyListeners();
    startHeartTimer();
    savePlayerData(hearts: player!.hearts);
  }

  void startHeartTimer() {
    if (_lastHeartStart != null) return;
    _lastHeartStart = DateTime.now();
    savePlayerData(lastHeartTimer: _lastHeartStart);
    _heartTimer = Timer.periodic(Duration(minutes: 2), (timer) {
      if (player!.hearts! < 5) {
        addHeart();
        _lastHeartStart = DateTime.now();
        savePlayerData(lastHeartTimer: _lastHeartStart);
      } else {
        timer.cancel();
        _lastHeartStart = null;
        savePlayerData(lastHeartTimer: null);
      }
    });
  }

  int secondsRemaining() {
    if (_lastHeartStart == null) {
      return -1;
    }

    final now = DateTime.now();
    final elapsed = now.difference(_lastHeartStart!).inSeconds;
    final total = 120; // total seconds for the timer
    final remaining = total - elapsed;

    return remaining > 0 ? remaining : 0;
  }

  hasMaxHearts() {
    return player!.hearts! == 5;
  }

  removeCoins(int coins) {
    player!.coins = player!.coins! - coins;
    if (player!.coins! < 0) player!.coins = 0;
    notifyListeners();
    savePlayerData(coins: player!.coins);
  }

  hasHearts() {
    return player!.hearts! > 0;
  }

  getCoins() {
    return player!.coins;
  }

  getHearts() {
    return player!.hearts;
  }

  @override
  void dispose() {
    _heartTimer?.cancel();
    super.dispose();
  }

  buyHeart() {
    if (player!.coins! < 15) return;
    if (hasMaxHearts()) {
      return;
    }

    addHeart();
    removeCoins(15);
    if (hasMaxHearts()) {
      _heartTimer?.cancel();
      _lastHeartStart = null;
    }

    notifyListeners();
  }

  Future<void> loadPlayerFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    int coins = prefs.getInt('coins') ?? 0;
    int hearts = prefs.getInt('hearts') ?? 5;
    String? lastHeartStartString = prefs.getString('lastHeartStart');
    DateTime? lastHeartStart =
        lastHeartStartString != null
            ? DateTime.tryParse(lastHeartStartString)
            : null;

    String? lastPlayedString = prefs.getString('lastPlayed');
    _lastPlayed = lastPlayedString ?? '';

    /*  DateTime? lastPlayed =
        lastPlayedString != null ? DateTime.tryParse(lastPlayedString) : null;
    */

    int recoveredHearts = 0;
    if (lastHeartStart != null && hearts < 5) {
      int elapsedMinutes = DateTime.now().difference(lastHeartStart).inMinutes;
      recoveredHearts = (elapsedMinutes ~/ 2).clamp(0, 5 - hearts);
      hearts += recoveredHearts;
    }
    setPlayer(Player(coins: coins, hearts: hearts));
  }

  setLastPlayed(DateTime lastPlayed) {
    _lastPlayed = '${lastPlayed.year}-${lastPlayed.month}-${(lastPlayed).day}';
    savePlayerData(lastPlayed: _lastPlayed);
  }

  getLastPlayed() {
    return _lastPlayed;
  }
}
