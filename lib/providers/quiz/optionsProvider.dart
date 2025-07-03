import 'dart:math';

import 'package:flutter/foundation.dart';

class OptionsProvider extends ChangeNotifier {
  List<String> options = [];
  List<bool> isSelected = [];
  List<int> answers = [];
  bool _hintUsed = false;
  bool _solutionUsed = false;
  List<bool> correct = [];

  setOptions(List<String> options) {
    this.options = options;
    isSelected = List<bool>.filled(options.length, false);
  }

  setAnswers(List<int> answers) {
    this.answers = answers;
  }

  setSelected(int index) {
    if (index >= 0 && index < isSelected.length) {
      isSelected[index] = true;
      notifyListeners();
    }
  }

  setUnselected(int index) {
    if (index >= 0 && index < isSelected.length) {
      isSelected[index] = false;
      notifyListeners();
    }
  }

  toggleSelected(int index) {
    if (index >= 0 && index < isSelected.length) {
      isSelected[index] = !isSelected[index];
      notifyListeners();
    }
    correct.clear();
  }

  clear() {
    options.clear();
    isSelected = [];
    answers.clear();

    _hintUsed = false;
    _solutionUsed = false;
    notifyListeners();
  }

  canEnter() {
    if (isSelected.where((element) => element).isNotEmpty) return true;
    return false;
  }

  isCorrect() {
    for (int i = 0; i < isSelected.length; i++) {
      if (isSelected[i] && !answers.contains(i)) {
        return false;
      }
    }
    for (int answer in answers) {
      if (!isSelected[answer]) {
        return false;
      }
    }
    return true;
  }

  getTheSolution() {
    _hintUsed = true;

    _solutionUsed = true;
    isSelected = List<bool>.filled(options.length, false);
    for (int i = 0; i < answers.length; i++) {
      isSelected[answers[i]] = true;
    }

    notifyListeners();
  }

  getHint() {
    _hintUsed = true;
    isSelected = List<bool>.filled(options.length, false);
    int index1;
    int index2;
    do {
      index1 = Random().nextInt(answers.length);
      index2 = Random().nextInt(answers.length);
    } while (index1 == index2);

    isSelected[answers[index1]] = true;
    if (answers.length > 3) isSelected[answers[index2]] = true;
    notifyListeners();
  }

  bool hintUsed() {
    return _hintUsed;
  }

  solutionUsed() {
    return _solutionUsed;
  }
}
