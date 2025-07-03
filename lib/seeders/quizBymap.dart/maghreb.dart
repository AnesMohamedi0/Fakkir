import 'package:general_knowledge_app/models/quiz/completeQuiz.dart';
import 'package:general_knowledge_app/models/quiz/intervalQuiz.dart';
import 'package:general_knowledge_app/models/quiz/matchingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/optionsQuiz.dart';
import 'package:general_knowledge_app/models/quiz/orderingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/quiz.dart';

List<Quiz> quizMapMaghreb = [
  // 1. OptionsQuiz – دول المغرب العربي
  OptionsQuiz(
    id: 1,
    question: 'اختر الدول التي تنتمي إلى المغرب العربي',
    imagePath: null,
    categoryId: 1,
    options: ['الجزائر', 'تشاد', 'مصر', 'المغرب', 'تونس', 'ليبيا', 'موريتانيا'],
    answers: [0, 3, 4, 5, 6],
    levelId: 101,
  ),

  // 2. OptionsQuiz – العملات في المغرب العربي
  OptionsQuiz(
    id: 2,
    question: 'اختر العملات التي تُستخدم في دول المغرب العربي',
    imagePath: null,
    categoryId: 10,
    options: [
      'الدولار',
      'الدرهم',

      'الأوقية',
      'الريال',
      'الليرة',
      'الروبية',
      'الدينار',
    ],
    answers: [1, 2, 6],
    levelId: 102,
  ),

  // 3. MatchingQuiz – طابق المدن مع الدول
  MatchingQuiz(
    id: 3,
    question: 'طابق كل مدينة من المغرب العربي مع الدولة التي تنتمي إليها',
    imagePath: null,
    categoryId: 2,
    options: [
      'وهران',
      'طرابلس',
      'جربة',
      'سوسة',
      'عنابة',
      'الدار البيضاء',
      'مصراتة',
      'تازة',
      'أدرار',
      'القيروان',
      'طنجة',
    ],
    toMatchWith: ['الجزائر', 'ليبيا', 'تونس', 'المغرب'],
    answer: {
      'وهران': 0,
      'عنابة': 0,
      'أدرار': 0,
      'طرابلس': 1,
      'مصراتة': 1,
      'جربة': 2,
      'سوسة': 2,
      'القيروان': 2,
      'الدار البيضاء': 3,
      'تازة': 3,
      'طنجة': 3,
    },
    levelId: 103,
  ),

  // 4. OrderingQuiz – ترتيب الدول حسب عدد السكان
  OrderingQuiz(
    id: 4,
    question: 'رتب دول المغرب العربي حسب عدد السكان من الأكثر إلى الأقل',
    imagePath: null,
    categoryId: 7,
    options: ['ليبيا', 'الجزائر', 'موريتانيا', 'المغرب', 'تونس'],
    correctOrder: [1, 3, 4, 0, 2],
    levelId: 104,
  ),
  // 5. IntervalQuiz – مساحة تونس
  IntervalQuiz(
    id: 5,
    question: 'ما هي المساحة الإجمالية لتونس بالكيلومتر المربع؟',
    imagePath: null,
    categoryId: 7,
    minInterval: 100000,
    maxInterval: 250000,
    answer: 163610,
    margin: 10000,
    levelId: 105,
  ),

  // 6. CompleteQuiz – شكل ليبيا
  CompleteQuiz(
    id: 6,
    question: 'إلى أي دولة ينتمي هذا الشكل؟',
    imagePath: 'assets/images/quizAssets/105.jpg',
    categoryId: 6,
    answer: 'ليبيا',
    levelId: 106,
  ),

  // 7. OrderingQuiz – تاريخ الاستقلال
  OrderingQuiz(
    id: 7,
    question: 'رتب العواصم التالية حسب قربها من الجزائر (من الأقرب إلى الأبعد)',
    imagePath: null,
    categoryId: 2, // مدن وعواصم
    options: [
      'مكسيكو سيتي', // index 0
      'تونس', // index 1 ✅
      'كانبيرا', // index 2
      'ميونيخ', // index 3 ✅
      'الرياض', // index 4 ✅
      'روما', // index 5 ✅
      'بغداد', // index 6 ✅
    ],
    correctOrder: [1, 5, 3, 4, 6, 0, 2],
    levelId: 107,
  ),
  // 8. CompleteQuiz – أكبر مدينة سكانًا
  CompleteQuiz(
    id: 8,
    question: 'ما هي أكثر مدينة سكانًا في منطقة المغرب العربي؟',
    imagePath: null,
    categoryId: 7,
    answer: 'الدار البيضاء',
    levelId: 108,
  ),

  // 9. OptionsQuiz – الدول التي تحد المغرب العربي
  OptionsQuiz(
    id: 9,
    question: 'اختر الدول التي تحد منطقة المغرب العربي',
    imagePath: null,
    categoryId: 1,
    options: [
      'إيطاليا',
      'مالي',
      'تشاد',
      'إسبانيا',
      'اليونان',
      'النيجر',
      'مصر',
      'السنغال',
      'نيجيريا',
    ],
    answers: [1, 2, 3, 5, 6, 7],
    levelId: 109,
  ),

  // 10. CompleteQuiz – ما اسم الصحراء
  CompleteQuiz(
    id: 10,
    question: 'ما اسم الصحراء التي تغطي جزءًا كبيرًا من منطقة المغرب العربي؟',
    imagePath: null,
    categoryId: 1,
    answer: 'الصحراء الكبرى',
    levelId: 110,
  ),
];
