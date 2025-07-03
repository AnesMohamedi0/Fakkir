import 'package:general_knowledge_app/models/quiz/completeQuiz.dart';
import 'package:general_knowledge_app/models/quiz/intervalQuiz.dart';
import 'package:general_knowledge_app/models/quiz/matchingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/optionsQuiz.dart';
import 'package:general_knowledge_app/models/quiz/orderingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/quiz.dart';

List<Quiz> quizMapOceania = [
  OptionsQuiz(
    id: 1,
    question: 'اختر المحيطات التي تحد أوقيانوسيا',
    imagePath: null,
    categoryId: 1,
    options: [
      'المحيط الهادئ',
      'المحيط الأطلسي',
      'المحيط الهندي',
      'المحيط المتجمد الشمالي',
      'المحيط المتجمد الجنوبي',
    ],
    answers: [0, 2, 4],
    levelId: 101,
  ),

  OptionsQuiz(
    id: 2,
    question: 'اختر الدول التي تنتمي إلى أوقيانوسيا',
    imagePath: null,
    categoryId: 1,
    options: [
      'أستراليا',
      'إيطاليا',
      'إندونيسيا',
      'نيوزيلندا',
      'فيجي',
      'بابوا غينيا الجديدة',
      'غينيا',
      'تايلاند',
      'جزر سليمان',
    ],
    answers: [0, 3, 4, 5, 8], // الدول التي تنتمي إلى أوقيانوسيا
    levelId: 102,
  ),

  CompleteQuiz(
    id: 3,
    question: 'إلى أي دولة ينتمي هذا العلم؟',
    imagePath: 'assets/images/quizAssets/103.png',
    categoryId: 6,
    answer: 'بابوا غينيا الجديدة',
    levelId: 103,
  ),

  IntervalQuiz(
    id: 4,
    question: 'ما هي المساحة الكلية لأستراليا؟',
    imagePath: null,
    categoryId: 7,
    minInterval: 7500000,
    maxInterval: 7800000,
    answer: 7692024,
    margin: 100000,
    levelId: 104,
  ),

  OrderingQuiz(
    id: 5,
    question: 'رتب هذه الدول حسب المساحة من الأكبر إلى الأصغر',
    imagePath: null,
    categoryId: 7,
    options: [
      'أستراليا',
      'فيجي',
      'نيوزيلندا',
      'بابوا غينيا الجديدة',
      'ميكرونيزيا',
      'جزر مارشال',
    ],
    correctOrder: [0, 3, 2, 1, 4, 5],
    levelId: 105,
  ),
  MatchingQuiz(
    id: 6,
    question: 'طابق المدن التالية مع الدول التي تنتمي إليها',
    imagePath: null,
    categoryId: 2,
    options: [
      'أوكلاند',
      'سيدني',
      'بيرث',
      'هاميلتون',
      'ويلينغتون',
      'ملبورن',
      'كانبيرا',
    ],
    toMatchWith: ['نيوزيلندا', 'أستراليا'],
    answer: {
      'أوكلاند': 0,
      'سيدني': 1,
      'بيرث': 1,
      'هاميلتون': 0,
      'ويلينغتون': 0,
      'ملبورن': 1,
      'كانبيرا': 1,
    },
    levelId: 106,
  ),

  IntervalQuiz(
    id: 7,
    question: 'في أي سنة حصلت نيوزيلندا على استقلالها؟',
    imagePath: null,
    categoryId: 11,
    minInterval: 1940,
    maxInterval: 1950,
    answer: 1947,
    margin: 5,
    levelId: 107,
  ),

  OptionsQuiz(
    id: 8,
    question: 'أي من الجزر التالية لا توجد فعليًا في أوقيانوسيا؟',
    imagePath: null,
    categoryId: 1,
    options: [
      'جزر مارشال',
      'جزر سليمان',
      'جزيرة لوريم',
      'جزر فانواتو',
      'جزيرة نوفايا',
      'جزر توفالو',
      'جزيرة كوالما',
      'جزر ساموا',
    ],
    answers: [2, 4, 6], // الجزر المزيفة
    levelId: 108,
  ),

  MatchingQuiz(
    id: 9,
    question: 'طابق كل دولة من أوقيانوسيا مع شريكها التجاري الأكبر',
    imagePath: null,
    categoryId: 10,
    options: [
      'أستراليا',
      'نيوزيلندا',
      'فيجي',
      'بابوا غينيا الجديدة',
      'جزر سليمان',
      'ساموا',
    ],
    toMatchWith: ['الصين', 'نيوزيلندا', 'أستراليا', 'الولايات المتحدة'],
    answer: {
      'أستراليا': 0,
      'نيوزيلندا': 0,
      'فيجي': 1,
      'بابوا غينيا الجديدة': 2,
      'جزر سليمان': 2,
      'ساموا': 3,
    },
    levelId: 109,
  ),

  CompleteQuiz(
    id: 10,
    question: 'إلى أي دولة ينتمي هذا الشكل؟',
    imagePath: 'assets/images/quizAssets/110.png',
    categoryId: 6,
    answer: 'نيوزيلندا',
    levelId: 110,
  ),
];
