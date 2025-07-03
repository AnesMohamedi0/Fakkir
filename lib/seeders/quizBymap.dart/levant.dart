import 'package:general_knowledge_app/models/quiz/completeQuiz.dart';
import 'package:general_knowledge_app/models/quiz/intervalQuiz.dart';
import 'package:general_knowledge_app/models/quiz/matchingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/optionsQuiz.dart';
import 'package:general_knowledge_app/models/quiz/orderingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/quiz.dart';

List<Quiz> quizMapLevant = [
  OptionsQuiz(
    id: 31,
    question: 'ما هي الدول التي تُعد من منطقة بلاد الشام؟',
    imagePath: null,
    categoryId: 1,
    options: [
      'سوريا',
      'العراق',
      'لبنان',
      'تركيا',
      'فلسطين',
      'الأردن',
      'مصر',
      'ليبيا',
      'اليمن',
      'السعودية',
    ],
    answers: [0, 2, 4, 5],
    levelId: 401,
  ),

  CompleteQuiz(
    id: 32,
    question: 'ما هي الإمبراطورية التي كانت مدينة دمشق عاصمتها؟',
    imagePath: null,
    categoryId: 11,
    answer: 'الدولة الأموية',
    levelId: 402,
  ),

  MatchingQuiz(
    id: 33,
    question: 'طابق كل مدينة مع الدولة التي تنتمي إليها',
    imagePath: null,
    categoryId: 2, // مدن وعواصم
    options: [
      'حماة',
      'عمّان',
      'حلب',
      'القدس',
      'بئر السبع',
      'إربد',
      'نابلس',
      'اللاذقية',
      'حمص',
    ],
    toMatchWith: ['سوريا', 'الأردن', 'فلسطين'],
    answer: {
      'حماة': 0,
      'حلب': 0,
      'اللاذقية': 0,
      'حمص': 0,
      'عمّان': 1,
      'إربد': 1,
      'القدس': 2,
      'نابلس': 2,
      'بئر السبع': 2,
    },
    levelId: 403,
  ),

  IntervalQuiz(
    id: 34,
    question:
        'ما هي المساحة الإجمالية لدول بلاد الشام مجتمعة (بالألف كيلومتر مربع)؟',
    imagePath: null,
    categoryId: 7,
    minInterval: 250,
    maxInterval: 350,
    answer: 291,
    margin: 5,
    levelId: 404,
  ),

  IntervalQuiz(
    id: 35,
    question: 'كم سنة دامت الدولة الأموية؟',
    imagePath: null,
    categoryId: 11, // تاريخ
    minInterval: 70,
    maxInterval: 100,
    answer: 89,
    margin: 2,
    levelId: 405,
  ),

  CompleteQuiz(
    id: 36,
    question: 'ما هو الجزء من سوريا الذي يحتله الكيان الصهيوني؟',
    imagePath: null,
    categoryId: 1, // جغرافيا عامة
    answer: 'الجولان',
    levelId: 406,
  ),

  OrderingQuiz(
    id: 37,
    question:
        'رتب القوى التي تعاقبت على السيطرة على بلاد الشام من الأقدم إلى الأحدث',
    imagePath: null,
    categoryId: 11, // تاريخ
    options: [
      'العباسية', // 0
      'الانتداب الفرنسي والبريطاني', // 1
      'الفارسية', // 2
      'الأموية', // 3
      'الرومانية', // 4
      'العثمانية', // 5
    ],
    correctOrder: [
      2,
      4,
      3,
      0,
      5,
      1,
    ], // الفارسية → الرومانية → الأموية → العباسية → العثمانية → الانتداب
    levelId: 407,
  ),

  OrderingQuiz(
    id: 38,
    question: 'رتب المدن التالية حسب بعدها عن بيروت (من الأقرب إلى الأبعد)',
    imagePath: null,
    categoryId: 1, // جغرافيا عامة
    options: [
      'بغداد',
      'حمص',
      'مكة المكرمة',
      'تونس',
      'وهران',
      'طهران',
      'برشلونة',
    ],
    correctOrder: [1, 0, 2, 5, 3, 4, 6],
    levelId: 408,
  ),

  OptionsQuiz(
    id: 39,
    question: 'اختر العواصم التابعة للدول التي لها حدود برية مع دول بلاد الشام',
    imagePath: null,
    categoryId: 2,
    options: [
      'الرياض',
      'الجزائر',
      'أنقرة',
      'الكويت',
      'بغداد',
      'تونس',
      'الرباط',
      'عمان',
      'طهران',
      'القاهرة',
    ],
    answers: [0, 2, 4, 9],
    levelId: 409,
  ),

  CompleteQuiz(
    id: 40,
    question: 'ما اسم البحر الذي يقع بين الأردن وفلسطين؟',
    imagePath: null,
    categoryId: 4,
    answer: 'البحر الميت',
    levelId: 410,
  ),
];
