import 'package:general_knowledge_app/models/quiz/completeQuiz.dart';
import 'package:general_knowledge_app/models/quiz/intervalQuiz.dart';
import 'package:general_knowledge_app/models/quiz/matchingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/optionsQuiz.dart';
import 'package:general_knowledge_app/models/quiz/orderingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/quiz.dart';

List<Quiz> quizMapBulkans = [
  OptionsQuiz(
    id: 51,
    question: 'اختر الدول ذات الأغلبية المسلمة في منطقة البلقان',
    imagePath: null,
    categoryId: 3, // ديانات
    options: [
      'صربيا',
      'البوسنة والهرسك',
      'كرواتيا',
      'كوسوفو',
      'ألبانيا',
      'الجبل الأسود',
      'بلغاريا',
    ],
    answers: [1, 3, 4], // البوسنة والهرسك، كوسوفو، ألبانيا
    levelId: 601,
  ),

  CompleteQuiz(
    id: 52,
    question: 'إلى أي دولة ينتمي هذا العلم؟',
    imagePath: 'assets/images/quizAssets/602.jpg',
    categoryId: 6, // أعلام وأشكال
    answer: 'مقدونيا الشمالية',
    levelId: 602,
  ),
  OptionsQuiz(
    id: 53,
    question: 'اختر الدول التي تنتمي إلى الاتحاد الأوروبي',
    imagePath: null,
    categoryId: 8, // قارات ودول
    options: [
      'سلوفينيا',
      'ألبانيا',
      'كوسوفو',
      'كرواتيا',
      'البوسنة والهرسك',
      'صربيا',
      'الجبل الأسود',
      'مقدونيا الشمالية',
    ],
    answers: [0, 3], // سلوفينيا، كرواتيا
    levelId: 603,
  ),
  MatchingQuiz(
    id: 54,
    question: 'طابق كل دولة مع الدول التي تحدها جغرافيًا',
    imagePath: null,
    categoryId: 1, // جغرافيا عامة
    options: [
      'سلوفينيا',
      'ألبانيا',
      'صربيا',
      'كوسوفو',
      'اليونان',
      'بلغاريا',
      'البوسنة والهرسك',
    ],
    toMatchWith: ['كرواتيا', 'مقدونيا الشمالية', 'كلاهما'],
    answer: {
      'سلوفينيا': 0, // كرواتيا
      'البوسنة والهرسك': 0, // كرواتيا
      'ألبانيا': 1, // مقدونيا الشمالية
      'اليونان': 1, // مقدونيا الشمالية
      'بلغاريا': 1, // مقدونيا الشمالية
      'صربيا': 2, // كلاهما
      'كوسوفو': 1, // كلاهما
    },
    levelId: 604,
  ),
  CompleteQuiz(
    id: 55,
    question: 'ما هي الدولة التي كانت تنتمي إليها معظم دول البلقان سابقًا؟',
    imagePath: null,
    categoryId: 11, // تاريخ
    answer: 'يوغوسلافيا',
    levelId: 605,
  ),
  IntervalQuiz(
    id: 56,
    question: 'في أي سنة سقطت دولة يوغوسلافيا؟',
    imagePath: null,
    categoryId: 11, // تاريخ
    minInterval: 1980,
    maxInterval: 2005,
    answer: 1992,
    margin: 1,
    levelId: 606,
  ),
  OptionsQuiz(
    id: 57,
    question: 'اختر الدول التي لها منفذ على البحر الأبيض المتوسط',
    imagePath: null,
    categoryId: 4, // بحار ومحيطات
    options: [
      'كرواتيا',
      'البوسنة والهرسك',
      'صربيا',
      'ألبانيا',
      'الجبل الأسود',
      'كوسوفو',
      'سلوفينيا',
      'مقدونيا الشمالية',
    ],
    answers: [0, 1, 3, 4, 6], // كرواتيا، البوسنة، ألبانيا، الجبل الأسود
    levelId: 607,
  ),

  OrderingQuiz(
    id: 58,
    question: 'رتب المدن التالية حسب بعدها عن زغرب (من الأقرب إلى الأبعد)',
    imagePath: null,
    categoryId: 1, // جغرافيا عامة
    options: [
      'بونيس آيرس',
      'روما',
      'طهران',
      'الرباط',
      'مومباي',
      'تونس',
      'لشبونة',
      'أثينا',
    ],
    correctOrder: [
      1, // روما
      7, // أثينا
      5, // تونس
      3, // الرباط
      6, // لشبونة
      2, // طهران
      4, // مومباي
      0, // بونيس آيرس
    ],
    levelId: 608,
  ),

  CompleteQuiz(
    id: 59,
    question: 'إلى أي دولة ينتمي هذا العلم؟',
    imagePath:
        'assets/images/quizAssets/609.jpg', // يمكنك تعديل المسار حسب مكان الصورة
    categoryId: 6, // أعلام وأشكال
    answer: 'ألبانيا',
    levelId: 609,
  ),

  OrderingQuiz(
    id: 60,
    question: 'رتب هذه الأحداث التاريخية في البلقان من الأقدم إلى الأحدث',
    imagePath: null,
    categoryId: 11, // تاريخ
    options: [
      'استقلال الجبل الأسود', // 0
      'الفتح العثماني', // 1
      'استقلال كوسوفو', // 2
      'تفكك يوغوسلافيا', // 3
      'الحرب الباردة',
    ],
    correctOrder: [1, 4, 3, 0, 2],
    levelId: 610,
  ),
];
