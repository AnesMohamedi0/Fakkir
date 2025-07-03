import 'dart:math';

import 'package:flutter/foundation.dart';

class CompleteProvider extends ChangeNotifier {
  String? answer;
  String input = '';
  List<String> options = [];
  List<int> isSelected = [];
  bool _hintUsed = false;
  bool _solutionUsed = false;
  List<bool> correct = [];

  setAnswer(String answer) {
    this.answer = answer;
    const arabicLetters = [
      'ا',
      'ب',
      'ت',
      'ث',
      'ج',
      'ح',
      'خ',
      'د',
      'ذ',
      'ر',
      'ز',
      'س',
      'ش',
      'ص',
      'ض',
      'ط',
      'ظ',
      'ع',
      'غ',
      'ف',
      'ق',
      'ك',
      'ل',
      'م',
      'ن',
      'ه',
      'و',
      'ي',
    ];

    String letters = this.answer!.replaceAll(' ', '');

    Random random = Random();
    int n = this.answer!.replaceAll(' ', '').length;
    for (int i = 0; i < 18 - n; i++) {
      letters = letters + arabicLetters[random.nextInt(arabicLetters.length)];
    }

    List<String> chars = letters.split('');
    chars.shuffle(Random());

    options = chars;

    isSelected = List.generate(options.length, (index) => -1);

    for (var i = 0; i < this.answer!.length; i++) {
      if (this.answer![i] == ' ') {
        input += ' ';
      } else {
        input += "_";
      }
    }
  }

  addLetter(String letter, int index) {
    List<String> chars = input.split('');
    int n = answer!.length;
    for (var i = 0; i < n; i++) {
      if (chars[i] == '_') {
        chars[i] = letter;
        isSelected[index] = i;
        break;
      }
    }

    input = chars.join();
    notifyListeners();
  }

  removeLetter(int index) {
    List<String> chars = input.split('');
    chars[index] = '_';
    input = chars.join();
    for (var i = 0; i < 20; i++) {
      if (isSelected[i] == index) {
        isSelected[i] = -1;
        break;
      }
    }
    correct.clear();
    notifyListeners();
  }

  removeLetterByIndex(int index) {
    List<String> chars = input.split('');
    chars[isSelected[index]] = '_';
    input = chars.join();
    isSelected[index] = -1;
    correct.clear();
    notifyListeners();
  }

  clearInput() {
    input = '';
    for (var i = 0; i < answer!.length; i++) {
      if (answer![i] == ' ') {
        input += ' ';
      } else {
        input += "_";
      }
    }

    correct.clear();

    notifyListeners();
  }

  bool isCorrect() {
    if (answer == null) return false;

    if (input == answer!) {
      return true;
    } else {
      for (var i = 0; i < answer!.length; i++) {
        correct.add(input[i] == answer![i]);
      }
      notifyListeners();
      return false;
    }
  }

  clear() {
    answer = null;
    input = '';
    options.clear();
    isSelected = List.generate(20, (index) => -1);
    _hintUsed = false;
    _solutionUsed = false;
    correct.clear();
    notifyListeners();
  }

  getTheSolution() {
    _solutionUsed = true;
    _hintUsed = true;
    input = answer!;
    isSelected = List.generate(options.length, (index) => -1);
    int n = answer!.replaceAll(' ', '').length;
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < options.length; j++) {
        if (options[j] == answer![i] && isSelected[j] == -1) {
          isSelected[j] = i;
          break;
        }
      }
    }
    correct.clear();
    notifyListeners();
  }

  canEnter() {
    List<String> chars = input.split('');
    return chars.where((char) => char == '_').isEmpty;
  }

  getHint() {
    clearInput();
    isSelected = List.generate(options.length, (index) => -1);

    List<String> charsAnswer = answer!.split('');
    List<String> charsInput = input.split('');

    int index1;

    int index2;
    do {
      index1 = Random().nextInt(charsAnswer.length);
      index2 = Random().nextInt(charsAnswer.length);
    } while (index1 == index2 ||
        charsAnswer[index1] == " " ||
        charsAnswer[index2] == " ");

    String hint1 = charsAnswer[index1];
    String hint2 = charsAnswer[index2];

    for (var i = 0; i < options.length; i++) {
      if (options[i] == hint1) {
        isSelected[i] = index1;
        break;
      }
    }

    for (var i = 0; i < options.length; i++) {
      if (options[i] == hint2) {
        isSelected[i] = index2;
        break;
      }
    }

    charsInput[index1] = hint1;
    charsInput[index2] = hint2;
    input = charsInput.join('');
    correct.clear();
    _hintUsed = true;

    notifyListeners();
  }

  bool hintUsed() {
    return _hintUsed;
  }

  solutionUsed() {
    return _solutionUsed;
  }

  colorsShow() {
    return correct.isNotEmpty;
  }
}
