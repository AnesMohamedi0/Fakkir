import 'package:general_knowledge_app/models/quiz/completeQuiz.dart';
import 'package:general_knowledge_app/models/quiz/intervalQuiz.dart';
import 'package:general_knowledge_app/models/quiz/matchingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/optionsQuiz.dart';
import 'package:general_knowledge_app/models/quiz/orderingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/quiz.dart';

List<Quiz> quizMapArabicGulf = [
  OptionsQuiz(
    id: 21,
    question: 'اختر الدول التي تنتمي إلى منطقة الخليج العربي',
    imagePath: null,
    categoryId: 8,
    options: [
      'مصر',
      'الإمارات',
      'الأردن',
      'قطر',
      'العراق',
      'سلطنة عمان',
      'البحرين',
      'اليمن',
      'الكويت',
      'إيران',
      'السعودية',
    ],
    answers: [1, 3, 4, 5, 6, 8, 10],
    levelId: 301,
  ),

  MatchingQuiz(
    id: 22,
    question: 'طابق كل دولة خليجية مع عملتها',
    imagePath: null,
    categoryId: 9, // عملات
    options: [
      'السعودية', // 0
      'الإمارات', // 1
      'قطر', // 2
      'الكويت', // 3
      'البحرين', // 4
      'سلطنة عمان', // 5
      'العراق', // 6
    ],
    toMatchWith: [
      'ريال', // 0
      'درهم', // 1
      'دينار', // 2
    ],
    answer: {
      'السعودية': 0, // ريال سعودي
      'قطر': 0, // ريال قطري
      'سلطنة عمان': 0, // ريال عماني
      'البحرين': 2, // دينار بحريني
      'الكويت': 2, // دينار كويتي
      'الإمارات': 1, // درهم إماراتي
      'العراق': 2, // دينار عراقي
    },
    levelId: 302,
  ),

  CompleteQuiz(
    id: 23,
    question: 'إلى أي مدينة ينتمي هذا المعلم: برج الساعة؟',
    imagePath: 'assets/images/quizAssets/303.jpg',
    categoryId: 2, // مدن وعواصم
    answer: 'مكة المكرمة',
    levelId: 303,
  ),

  OrderingQuiz(
    id: 24,
    question: 'رتب الدول التالية حسب المساحة (من الأكبر إلى الأصغر)',
    imagePath: null,
    categoryId: 7, // مساحات وسكان
    options: [
      'البحرين', // index 0
      'سلطنة عمان', // index 1
      'قطر', // index 2
      'الإمارات', // index 3
      'العراق', // index 4
      'السعودية', // index 5
      'الكويت', // index 6
    ],
    correctOrder: [5, 4, 1, 3, 6, 2, 0],
    levelId: 304,
  ),

  IntervalQuiz(
    id: 25,
    question: 'في أي سنة بدأت حرب الخليج؟',
    imagePath: null,
    categoryId: 11, // تاريخ
    minInterval: 1975,
    maxInterval: 2000,
    answer: 1990,
    margin: 1,
    levelId: 305,
  ),

  OptionsQuiz(
    id: 26,
    question: 'اختر العواصم من بين المدن التالية',
    imagePath: null,
    categoryId: 2, // مدن وعواصم
    options: [
      'الدوحة', // 0 ✅
      'جدة', // 1
      'أبو ظبي', // 2 ✅
      'النجف', // 3
      'مسقط', // 4 ✅
      'المنامة', // 5 ✅
      'الدمام', // 6
      'البصرة', // 7
      'الكويت', // 8 ✅
      'الرياض', // 9 ✅
      'دبي', // 10
    ],
    answers: [0, 2, 4, 5, 8, 9],
    levelId: 306,
  ),

  OptionsQuiz(
    id: 27,
    question: 'اختر الألوان التي لا تظهر في أي علم من أعلام دول الخليج العربي',
    imagePath: null,
    categoryId: 6, // أعلام وأشكال
    options: [
      'الأخضر', // 0
      'الأزرق', // 1 ✅
      'الأحمر', // 2
      'الأصفر', // 3 ✅
      'الأسود', // 4
      'البنفسجي', // 5 ✅
      'العنابي', // 6
      'الوردي', // 7 ✅
      'البرتقالي', // 8 ✅
      'الأبيض', // 9
    ],
    answers: [1, 3, 5, 7, 8],
    levelId: 307,
  ),

  OrderingQuiz(
    id: 28,
    question:
        'رتب العواصم التالية حسب قربها من المدينة المنورة (من الأقرب إلى الأبعد)',
    imagePath: null,
    categoryId: 2, // مدن وعواصم
    options: [
      'بوينس آيرس', // index 0
      'طرابلس', // index 1
      'إسلام آباد', // index 2
      'مدريد', // index 3
      'نواكشوط', // index 4
      'كيب تاون', // index 5
      'كييف', // index 6
      'صنعاء', // index 7
    ],
    correctOrder: [7, 1, 4, 2, 3, 6, 5, 0],
    levelId: 308,
  ),

  CompleteQuiz(
    id: 29,
    question:
        'ما هي الدولة التي تقع في شبه الجزيرة العربية ولكن لا تُعد من دول الخليج العربي؟',
    imagePath: null,
    categoryId: 1, // جغرافيا عامة
    answer: 'اليمن',
    levelId: 309,
  ),

  IntervalQuiz(
    id: 30,
    question: 'ما هو عدد سكان العراق (بالملايين نسمة)؟',
    imagePath: null,
    categoryId: 7,
    minInterval: 30,
    maxInterval: 60,
    answer: 44,
    margin: 1,
    levelId: 310,
  ),
];
