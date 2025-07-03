import 'dart:math';

import 'package:flutter/material.dart';

class MatchingProvider extends ChangeNotifier {
  List<String> options = [];
  List<String> toMatchWith = [];
  Map<String, int> answers = {};
  Map<String, int> input = {};
  bool _hintUsed = false;
  bool _solutionUsed = false;
  List<bool> correct = [];

  void setOptions(List<String> options) {
    this.options = options;
    setInput();
  }

  void settoMatchWith(List<String> toMatchWith) {
    this.toMatchWith = toMatchWith;
  }

  void setAnswers(Map<String, int> answers) {
    this.answers = answers;
  }

  void setInput() {
    input.clear();
    for (var element in options) {
      input[element] = -1;
    }
  }

  toggleInput(String option) {
    input[option] = input[option]! + 1;
    if (input[option]! >= toMatchWith.length) {
      input[option] = 0;
    }
    correct.clear();
    notifyListeners();
  }

  bool canEnter() {
    for (var element in options) {
      if (input[element] == -1) {
        return false;
      }
    }
    return true;
  }

  bool isCorrect() {
    bool isCorrect = true;

    for (var element in options) {
      if (answers[element] != input[element]) {
        isCorrect = false;
        correct.add(false);
      } else {
        correct.add(true);
      }
    }
    notifyListeners();
    return isCorrect;
  }

  getTheSolution() {
    _solutionUsed = true;
    _hintUsed = true;

    input.clear();
    for (var element in options) {
      input[element] = answers[element]!;
    }
    correct.clear();
    notifyListeners();
  }

  getHint() {
    _hintUsed = true;
    setInput();
    int index1;
    int index2;

    do {
      index1 = Random().nextInt(options.length);
      index2 = Random().nextInt(options.length);
    } while (index1 == index2);

    input.remove(options[index1]);
    input.remove(options[index2]);
    input[options[index1]] = answers[options[index1]]!;
    input[options[index2]] = answers[options[index2]]!;
    correct.clear();
    notifyListeners();
  }

  bool hintUsed() {
    return _hintUsed;
  }

  solutionUsed() {
    return _solutionUsed;
  }

  clear() {
    options.clear();
    toMatchWith.clear();
    answers.clear();
    input.clear();
    _hintUsed = false;
    _solutionUsed = false;
    correct.clear();
    notifyListeners();
  }

  colorsShow() {
    return correct.isNotEmpty;
  }
}
