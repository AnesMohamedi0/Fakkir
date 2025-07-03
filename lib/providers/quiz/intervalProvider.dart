import 'dart:math';

import 'package:flutter/foundation.dart';

class IntervalProvider extends ChangeNotifier {
  double margin = 0;
  double minInterval = 0;
  double maxInterval = 0;
  double answer = 0;
  double selected = 0;
  bool _hintUsed = false;
  bool _solutionUsed = false;
  int? hint;
  int? hintMargin;

  setMargin(double margin) {
    this.margin = margin;
  }

  setMinInterval(double minInterval) {
    this.minInterval = minInterval;
    selected = minInterval;
  }

  setMaxInterval(double maxInterval) {
    this.maxInterval = maxInterval;
  }

  setAnswer(double answer) {
    this.answer = answer;
  }

  setSelected(double selected) {
    this.selected = selected;
    notifyListeners();
  }

  isCorrect() {
    int lowerBound = (answer - margin).round();
    int upperBound = (answer + margin).round();
    return selected.round() >= lowerBound && selected.round() <= upperBound;
  }

  clear() {
    margin = 0;
    minInterval = 0;
    maxInterval = 0;
    answer = 0;
    selected = 0;
    _hintUsed = false;
    _solutionUsed = false;
    hint = null;
    hintMargin = null;
    notifyListeners();
  }

  getMargin() {
    return margin;
  }

  getTheSolution() {
    _solutionUsed = true;
    _hintUsed = true;

    selected = answer;
    notifyListeners();
  }

  canEnter() {
    return selected != minInterval;
  }

  getHint() {
    _hintUsed = true;
    hintMargin = ((maxInterval - minInterval) / 3.5).toInt();

    double maxOffset = hintMargin! * 0.8;
    double offset = (Random().nextDouble() - 0.5) * 2 * maxOffset;

    hint = (answer + offset).round();

    hint = hint!.clamp(
      (minInterval + hintMargin!).round(),
      (maxInterval - hintMargin!).round(),
    );

    notifyListeners();
  }

  bool hintUsed() {
    return _hintUsed;
  }

  solutionUsed() {
    return _solutionUsed;
  }
}
