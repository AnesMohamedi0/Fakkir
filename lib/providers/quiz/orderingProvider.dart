import 'dart:math';

import 'package:flutter/material.dart';

class OrderingProvider extends ChangeNotifier {
  List<String> options = [];
  List<String> input = [];
  List<int> answer = [];
  List<String> tempInput = []; // Temporary arrangement
  String? selectedItem;
  bool _canEnter = false;
  bool isRepositioning = false;
  int? targetIndex;
  bool _hintUsed = false;
  bool _solutionUsed = false;
  int? hintUsedOn;
  int? hintUsedOn2;
  List<bool> correct = [];

  setOptions(List<String> options) {
    this.options = options;
    input = List<String>.from(options);
  }

  setAnswer(List<int> answer) {
    this.answer = answer;
  }

  resetSelected() {
    isRepositioning = false;
    targetIndex = null;

    notifyListeners();
  }

  moveTo(String option, int position) {
    int i;
    for (i = 0; i < input.length; i++) {
      if (input[i] == option) {
        break;
      }
    }
    if (i == position) {
      return;
    } else if (i > position) {
      for (var j = i - 1; j >= position; j--) {
        input[j + 1] = input[j];
      }
    } else {
      for (var j = i; j < position; j++) {
        input[j] = input[j + 1];
      }
    }

    input[position] = option;
    correct.clear();
    notifyListeners();
  }

  void makeCanEnter() {
    _canEnter = true;
    notifyListeners();
  }

  void startRepositioning(String item) {
    selectedItem = item;
    isRepositioning = true;
    tempInput = List.from(input);
    correct.clear(); // Create a copy of current input
    notifyListeners();
  }

  // Update temporary position without committing
  void updateTempPosition(String item, int newPosition) {
    hintUsedOn = null;
    hintUsedOn2 = null;
    notifyListeners();
    if (!isRepositioning || selectedItem != item) return;

    // Apply the same logic as moveTo but on temporary list
    int i;
    for (i = 0; i < tempInput.length; i++) {
      if (tempInput[i] == item) {
        break;
      }
    }

    if (i == newPosition) {
      return;
    } else if (i > newPosition) {
      for (var j = i - 1; j >= newPosition; j--) {
        tempInput[j + 1] = tempInput[j];
      }
    } else {
      for (var j = i; j < newPosition; j++) {
        tempInput[j] = tempInput[j + 1];
      }
    }

    tempInput[newPosition] = item;
    notifyListeners();
  }

  // Confirm the repositioning - apply changes to actual input
  void confirmRepositioning() {
    if (isRepositioning && selectedItem != null) {
      input = List.from(tempInput);
      _resetTempState();
      notifyListeners();
    }
  }

  // Cancel repositioning - revert to original position
  void cancelRepositioning() {
    if (isRepositioning) {
      _resetTempState();
      resetSelected();
      notifyListeners();
    }
  }

  void _resetTempState() {
    selectedItem = null;
    isRepositioning = false;
    tempInput = [];
  }

  void notifyListeners1() {
    notifyListeners();
  }

  void getTheSolution() {
    _hintUsed = true;

    _solutionUsed = true;
    input = List.filled(options.length, '');
    for (int i = 0; i < options.length; i++) {
      input[i] = options[answer[i]];
    }
    correct.clear();
    _canEnter = true;
    hintUsedOn = null;
    hintUsedOn2 = null;
    notifyListeners();
  }

  void getHint() {
    _hintUsed = true;
    String item1;
    String item2;
    do {
      item1 = input[Random().nextInt(input.length)];
      item2 = input[Random().nextInt(input.length)];
    } while (item1 == item2);

    int correctPos1 = answer.indexOf(options.indexOf(item1));

    moveTo(item1, correctPos1);

    int correctPos2 = answer.indexOf(options.indexOf(item2));

    moveTo(item2, correctPos2);

    hintUsedOn = correctPos1;
    hintUsedOn2 = correctPos2;
    correct.clear();
    notifyListeners();
  }

  bool isCorrect() {
    bool isCorrect = true;
    for (int i = 0; i < options.length; i++) {
      if (input[i] != options[answer[i]]) {
        isCorrect = false;
        correct.add(false);
      } else {
        correct.add(true);
      }
    }
    notifyListeners();
    return isCorrect;
  }

  canEnter() {
    return _canEnter;
  }

  hintUsed() {
    return _hintUsed;
  }

  solutionUsed() {
    return _solutionUsed;
  }

  clear() {
    options.clear();
    input = [];
    answer.clear();
    tempInput.clear();
    correct.clear();
    selectedItem = null;
    _canEnter = false;
    isRepositioning = false;
    targetIndex = null;
    _hintUsed = false;
    _solutionUsed = false;
    hintUsedOn = null;
    hintUsedOn2 = null;
  }

  colorShow() {
    return correct.isNotEmpty;
  }
}
