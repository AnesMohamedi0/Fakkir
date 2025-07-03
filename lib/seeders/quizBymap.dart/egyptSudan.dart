import 'package:general_knowledge_app/models/quiz/completeQuiz.dart';
import 'package:general_knowledge_app/models/quiz/intervalQuiz.dart';
import 'package:general_knowledge_app/models/quiz/matchingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/optionsQuiz.dart';
import 'package:general_knowledge_app/models/quiz/orderingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/quiz.dart';

List<Quiz> quizMapEgyptSudan = [
  CompleteQuiz(
    id: 11,
    question: 'ما هي عملة مصر؟',
    imagePath: null,
    categoryId: 9, // عملات
    answer: 'الجنيه المصري',
    levelId: 201,
  ),
  MatchingQuiz(
    id: 12,
    question: 'طابق كل مدينة مع الدولة التي تنتمي إليها',
    imagePath: null,
    categoryId: 2, // مدن وعواصم
    options: [
      'الخرطوم',
      'القاهرة',
      'الإسكندرية',
      'أم درمان',
      'الإسماعيلية',
      'بورسعيد',
      'الجيلي',
      'أسوان',
    ],
    toMatchWith: ['مصر', 'السودان'],
    answer: {
      'الخرطوم': 1,
      'أم درمان': 1,
      'الجيلي': 1,
      'القاهرة': 0,
      'الإسكندرية': 0,
      'الإسماعيلية': 0,
      'بورسعيد': 0,
      'أسوان': 0,
    },
    levelId: 202,
  ),
  IntervalQuiz(
    id: 13,
    question: 'ما هو طول نهر النيل بالكيلومتر؟',
    imagePath: null,
    categoryId: 12, // مسطحات مائية
    minInterval: 4000,
    maxInterval: 8000,
    answer: 6650,
    margin: 200,
    levelId: 203,
  ),
  OptionsQuiz(
    id: 14,
    question: 'اختر الدول التي تحد مصر',
    imagePath: null,
    categoryId: 1, // جغرافيا عامة
    options: [
      'ليبيا',
      'السودان',
      'السعودية',
      'الأردن',
      'فلسطين',
      'تشاد',
      'تونس',
      'اليمن',
      'سوريا',
    ],
    answers: [0, 1, 4],
    levelId: 204,
  ),
  IntervalQuiz(
    id: 15,
    question: 'متى انفصل جنوب السودان عن السودان؟',
    imagePath: null,
    categoryId: 11, // تاريخ
    minInterval: 2000,
    maxInterval: 2025,
    answer: 2011,
    margin: 1,
    levelId: 205,
  ),
  OptionsQuiz(
    id: 16,
    question: 'اختر الألوان المشتركة بين علم مصر وعلم السودان',
    imagePath: null,
    categoryId: 6, // أعلام وأشكال
    options: ['الأحمر', 'الأبيض', 'الأسود', 'الأخضر', 'الأزرق', 'الأصفر'],
    answers: [0, 1, 2],
    levelId: 206,
  ),
  OrderingQuiz(
    id: 17,
    question: 'رتب الفترات التاريخية في مصر من الأقدم إلى الأحدث',
    imagePath: null,
    categoryId: 11, // تاريخ
    options: [
      'الاحتلال البريطاني',
      'الرومان',
      'المماليك',
      'الفتح الإسلامي',
      'الجمهورية',
      'العثمانيون',
    ],
    correctOrder: [1, 3, 2, 5, 0, 4],
    levelId: 207,
  ),
  OptionsQuiz(
    id: 18,
    question: 'اختر الدول التي لها حدود برية مع السودان',
    imagePath: null,
    categoryId: 1, // جغرافيا عامة
    options: [
      'مصر',
      'ليبيا',
      'الجزائر',
      'تشاد',
      'إثيوبيا',
      'كينيا',
      'المغرب',
      'إريتريا',
      'نيجيريا',
      'إفريقيا الوسطى',
      'جنوب السودان',
      'تونس',
    ],
    answers: [0, 1, 3, 4, 7, 9, 10],
    levelId: 208,
  ),
  OrderingQuiz(
    id: 19,
    question: 'رتب المدن التالية حسب قربها من القاهرة (من الأقرب إلى الأبعد)',
    imagePath: null,
    categoryId: 2, // مدن وعواصم
    options: [
      'نيويورك',
      'غزة',
      'الجزائر',
      'أبوجا',
      'الرباط',
      'الدوحة',
      'الرياض',
    ],
    correctOrder: [1, 6, 5, 2, 4, 3, 0],
    levelId: 209,
  ),
  CompleteQuiz(
    id: 20,
    question: 'ما اسم هذه المدينة التي تظهر على الخريطة؟',
    imagePath: 'assets/images/quizAssets/210.jpg',
    categoryId: 2, // مدن وعواصم
    answer: 'الإسكندرية',
    levelId: 210,
  ),
];
