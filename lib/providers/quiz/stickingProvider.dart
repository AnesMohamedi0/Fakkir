import 'package:flutter/material.dart';

class StickingProvider extends ChangeNotifier {
  String answer = '';
  List<String> options = [];
  String input = "";
  List<int> enterStack = [];

  bool _hintUsed = false;
  bool _solutionUsed = false;
  List<bool> correct = [];

  int? hintUsedOn;
  int? hintUsedOn2;

  List<int> isSelected = [];

  void setAnswer(String value) {
    answer = value;
  }

  void setOptions(List<String> value) {
    options = value;
    isSelected = List.generate(options.length, (index) => -1);
  }

  getOptions() {
    return options;
  }

  void addOption(int index) {
    isSelected[index] = 1;
    input += options[index];
    enterStack.add(index);
    clearHint();

    notifyListeners();
  }

  void addSpace() {
    input += " ";
    enterStack.add(-1);
    clearHint();

    notifyListeners();
  }

  void removeOption(int index) {
    int i = input.lastIndexOf(options[index]);
    input = input.substring(0, i) + input.substring(i + options[index].length);
    isSelected[index] = -1;

    enterStack.removeWhere((element) => element == index);
    input.replaceAll("  ", ' ');
    clearHint();

    notifyListeners();
  }

  bool canAddSpace() {
    return (input[input.length - 1] != " ");
  }

  removeLast() {
    if (input.isEmpty) {
      return;
    }
    int index = enterStack.last;
    enterStack.removeLast();
    if (index == -1) {
      input = input.substring(0, input.length - 1);
    } else {
      input = input.substring(0, input.length - options[index].length);
      isSelected[index] = -1;
    }
    input.replaceAll("  ", ' ');
    clearHint();

    notifyListeners();
  }

  canAdd() {
    return input.length < answer.length + 3;
  }

  clearInput() {
    input = "";
    isSelected.clear();
    isSelected = List.generate(options.length, (index) => -1);
    clearHint();
    notifyListeners();
  }

  bool isCorrect() {
    return answer == input;
  }

  clearHint() {
    hintUsedOn = -1;
    hintUsedOn2 = -1;
    notifyListeners();
  }

  getHint() {
    _hintUsed = true;
    clearInput();

    int hint1 = -1;
    int hint2 = -1;

    for (var i = 0; i < options.length; i++) {
      if (answer.contains(options[i])) {
        hint1 = i;
        break;
      }
    }
    for (var i = 0; i < options.length; i++) {
      if (i != hint1 && answer.contains(options[i])) {
        hint2 = i;
        break;
      }
    }

    hintUsedOn = hint1;
    if (answer.length > 5) hintUsedOn2 = hint2;
    notifyListeners();
  }

  clear() {
    clearInput();
    isSelected.clear();
    answer = "";
    options.clear();
    enterStack.clear();
    _hintUsed = false;
    _solutionUsed = false;
    notifyListeners();
  }

  getTheSolution() {
    clearInput();
    for (var i = 0; i < options.length; i++) {
      if (answer.contains(options[i])) {
        isSelected[i] = 1;
      }
    }
    input = answer;
    _solutionUsed = true;
    notifyListeners();
  }

  canEnter() {
    return input.isNotEmpty;
  }

  hintUsed() {
    return _hintUsed;
  }

  solutionUsed() {
    return _solutionUsed;
  }
}
