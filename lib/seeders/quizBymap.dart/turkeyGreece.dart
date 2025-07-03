import 'package:general_knowledge_app/models/quiz/completeQuiz.dart';
import 'package:general_knowledge_app/models/quiz/intervalQuiz.dart';
import 'package:general_knowledge_app/models/quiz/matchingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/optionsQuiz.dart';
import 'package:general_knowledge_app/models/quiz/orderingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/quiz.dart';

List<Quiz> quizMapTurkeyGreece = [
  OptionsQuiz(
    id: 41,
    question: 'اختر الدول التي لها حدود برية مع تركيا',
    imagePath: null,
    categoryId: 1, // جغرافيا عامة
    options: [
      'أوكرانيا', // 0 ❌
      'أرمينيا', // 1 ✔️
      'سوريا', // 2 ✔️
      'لبنان', // 3 ❌
      'إيران', // 4 ✔️
      'جورجيا', // 5 ✔️
      'العراق', // 6 ✔️
      'اليونان', // 7 ✔️
      'بلغاريا', // 8 ✔️
      'أذربيجان', // 9 ❌
    ],
    answers: [1, 2, 4, 5, 6, 7, 8],
    levelId: 501,
  ),
  CompleteQuiz(
    id: 42,
    question: 'إلى أي دولة ينتمي هذا العلم؟',
    imagePath:
        'assets/images/quizAssets/502.jpg', // تأكد من وجود الصورة داخل المشروع
    categoryId: 6, // أعلام وأشكال
    answer: 'قبرص',
    levelId: 502,
  ),
  MatchingQuiz(
    id: 43,
    question: 'طابق كل مدينة مع الدولة التي تنتمي إليها',
    imagePath: null,
    categoryId: 2, // مدن وعواصم
    options: [
      'أثينا', // 0 - اليونان
      'إسطنبول', // 1 - تركيا
      'نيقوسيا', // 2 - قبرص
      'أنطاليا', // 3 - تركيا
      'أنقرة', // 4 - تركيا
      'سلانيك', // 5 - اليونان
      'لارنكا', // 6 - قبرص
    ],
    toMatchWith: ['اليونان', 'تركيا', 'قبرص'],
    answer: {
      'أثينا': 0,
      'إسطنبول': 1,
      'نيقوسيا': 2,
      'أنطاليا': 1,
      'أنقرة': 1,
      'سلانيك': 0,
      'لارنكا': 2,
    },
    levelId: 503,
  ),
  CompleteQuiz(
    id: 44,
    question: 'ما اسم البحر الذي يقع شمال تركيا؟',
    imagePath: null,
    categoryId: 4, // بحار ومحيطات
    answer: 'البحر الأسود',
    levelId: 504,
  ),
  IntervalQuiz(
    id: 45,
    question: 'كم يبلغ عدد سكان تركيا (بالملايين)؟',
    imagePath: null,
    categoryId: 7, // مساحات وسكان
    minInterval: 70,
    maxInterval: 100,
    answer: 85,
    margin: 2, // يُقبل الجواب بين 83 و87
    levelId: 505,
  ),
  OptionsQuiz(
    id: 46,
    question: 'اختر الدول التي كانت ضمن الدولة العثمانية',
    imagePath: null,
    categoryId: 11, // تاريخ
    options: [
      'سوريا', // 0 ✔️
      'اليونان', // 1 ✔️
      'إيران', // 2 ❌
      'العراق', // 3 ✔️
      'مصر', // 4 ✔️
      'ألمانيا', // 5 ❌
      'الجزائر', // 6 ✔️
      'تونس', // 7 ✔️
      'فرنسا', // 8 ❌
      'ليبيا', // 9 ✔️
      'إيطاليا', //10 ❌
      'السعودية', //11 ✔️ (الحجاز)
      'باكستان', //12 ❌
      'المغرب', //13 ❌ ← تمت إزالته من الإجابة الصحيحة
    ],
    answers: [0, 1, 3, 4, 6, 7, 9, 11],
    levelId: 506,
  ),
  OrderingQuiz(
    id: 47,
    question: 'رتب الدول التالية حسب قربها من أثينا (من الأقرب إلى الأبعد)',
    imagePath: null,
    categoryId: 1, // جغرافيا عامة
    options: [
      'النرويج', // 0
      'البرتغال', // 1
      'السعودية', // 2
      'تركيا', // 3
      'البرازيل', // 4
      'النيجر', // 5
      'إيطاليا', // 6
      'اليمن', // 7
      'ليبيا', // 8
      'الجزائر', // 9
    ],
    correctOrder: [3, 6, 8, 9, 5, 2, 7, 1, 0, 4],
    levelId: 507,
  ),

  OptionsQuiz(
    id: 48,
    question:
        'ما هي الدول أو الكيانات التي تمتلك أو تدير أراضي أو مناطق على جزيرة قبرص؟',
    imagePath: null,
    categoryId: 1, // جغرافيا عامة
    options: [
      'قبرص',
      'تركيا',
      'المملكة المتحدة',
      'اليونان',
      'الأمم المتحدة',
      'فرنسا',
      'إيطاليا',
    ],
    answers: [0, 1, 2, 4], // قبرص، تركيا، بريطانيا، الأمم المتحدة
    levelId: 508,
  ),
  IntervalQuiz(
    id: 49,
    question: 'في أي سنة سقطت الدولة العثمانية؟',
    imagePath: null,
    categoryId: 11, // تاريخ
    minInterval: 1900,
    maxInterval: 1950,
    answer: 1924,
    margin: 1,
    levelId: 509,
  ),

  MatchingQuiz(
    id: 50,
    question: 'طابق كل دولة أو بحر مع الدول التي تحدها جغرافيًا أو تطل عليها',
    imagePath: null,
    categoryId: 1, // جغرافيا عامة
    options: [
      'البحر الأبيض المتوسط',
      'البحر الأسود',
      'بلغاريا',
      'ألبانيا',
      'مقدونيا الشمالية',
      'أرمينيا',
      'جورجيا',
    ],
    toMatchWith: ['تركيا', 'اليونان', 'تركيا واليونان'],
    answer: {
      'البحر الأسود': 0, // تركيا
      'أرمينيا': 0,
      'جورجيا': 0,
      'ألبانيا': 1, // اليونان
      'مقدونيا الشمالية': 1,
      'البحر الأبيض المتوسط': 2, // تركيا واليونان
      'بلغاريا': 2, // تركيا واليونان
    },
    levelId: 510,
  ),
];
