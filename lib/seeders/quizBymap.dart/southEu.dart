import 'package:general_knowledge_app/models/quiz/completeQuiz.dart';
import 'package:general_knowledge_app/models/quiz/intervalQuiz.dart';
import 'package:general_knowledge_app/models/quiz/matchingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/optionsQuiz.dart';
import 'package:general_knowledge_app/models/quiz/orderingQuiz.dart';
import 'package:general_knowledge_app/models/quiz/quiz.dart';

List<Quiz> quizMapSouthEu = [
  IntervalQuiz(
    id: 61,
    question: 'كم عدد سكان إيطاليا (بالملايين)؟',
    imagePath: null,
    categoryId: 7, // مساحات وسكان
    minInterval: 50,
    maxInterval: 100,
    answer: 59,
    margin: 2,
    levelId: 701,
  ),

  MatchingQuiz(
    id: 62,
    question: 'طابق كل مدينة مع الدولة التي تنتمي إليها',
    imagePath: null,
    categoryId: 2, // مدن وعواصم
    options: [
      'غرناطة',
      'جنوى',
      'بورتو',
      'إيفورا',
      'باليرمو',
      'إشبيلية',
      'تورينو',
      'ماديرا',
    ],
    toMatchWith: ['إيطاليا', 'إسبانيا', 'البرتغال'],
    answer: {
      'غرناطة': 1, // إسبانيا
      'إشبيلية': 1, // إسبانيا
      'بورتو': 2, // البرتغال
      'إيفورا': 2, // البرتغال
      'ماديرا': 2, // البرتغال
      'جنوى': 0, // إيطاليا
      'باليرمو': 0, // إيطاليا
      'تورينو': 0, // إيطاليا
    },
    levelId: 702,
  ),
  MatchingQuiz(
    id: 63,
    question: 'طابق كل كلمة مع اللغة التي تنتمي إليها',
    imagePath: null,
    categoryId: 5, // لغات
    options: [
      'Gracias',
      'Obrigado',
      'Grazie',
      'Por favor',
      'Ciao',
      'Hola',
      'Bom dia',
    ],
    toMatchWith: ['الإسبانية', 'البرتغالية', 'الإيطالية'],
    answer: {
      'Gracias': 0,
      'Hola': 0,
      'Por favor': 0,
      'Obrigado': 1,
      'Bom dia': 1,
      'Grazie': 2,
      'Ciao': 2,
    },
    levelId: 703,
  ),
  CompleteQuiz(
    id: 64,
    question: 'إلى أي دولة ينتمي هذا العلم؟',
    imagePath: 'assets/images/quizAssets/704.jpg',
    categoryId: 6, // أعلام وأشكال
    answer: 'أندورا',
    levelId: 704,
  ),

  CompleteQuiz(
    id: 65,
    question: '... التي تضم إسبانيا والبرتغال؟ شبه الجزيرة...',
    imagePath: null,
    categoryId: 1, // جغرافيا عامة
    answer: 'الإيبيرية',
    levelId: 705,
  ),

  IntervalQuiz(
    id: 66,
    question: 'كم سنة دام الحكم الإسلامي في شبه الجزيرة الإيبيرية؟',
    imagePath: null,
    categoryId: 11, // تاريخ
    minInterval: 600,
    maxInterval: 800,
    answer: 781,
    margin: 5,
    levelId: 706,
  ),

  OrderingQuiz(
    id: 67,
    question: 'رتب المدن التالية حسب قربها من مدريد (من الأقرب إلى الأبعد)',
    imagePath: null,
    categoryId: 2, // مدن وعواصم
    options: [
      'أبو ظبي',
      'وهران',
      'طنجة',
      'موسكو',
      'برلين',
      'إسطنبول',
      'كيب تاون',
    ],
    correctOrder: [2, 1, 4, 5, 0, 3, 6],
    levelId: 707,
  ),

  OptionsQuiz(
    id: 68,
    question: 'اختر الدول التي لها حدود مع إسبانيا',
    imagePath: null,
    categoryId: 1, // جغرافيا عامة
    options: [
      'البرتغال', // 0 ✅
      'فرنسا', // 1 ✅
      'أندورا', // 2 ✅
      'إيطاليا', // 3 ❌
      'ألمانيا', // 4 ❌
      'المغرب', // 5 ✅
      'بلجيكا', // 6 ❌
      'موريتانيا', // 7 ❌
      'المملكة المتحدة', // 8 ✅ (جبل طارق)
    ],
    answers: [0, 1, 2, 5, 8],
    levelId: 708,
  ),
  OptionsQuiz(
    id: 69,
    question: 'أي من التالي ينطبق على دولة مالطا؟',
    imagePath: null,
    categoryId: 1, // جغرافيا عامة
    options: [
      'هي دولة جزيرية', // ✅
      'تقع شمال الجزائر',
      'تتحدث لغة قريبة من العربية', // ✅
      'لديها حدود برية مع إيطاليا', // ❌
      'ذات أغلبية مسلمة', // ❌
      'عاصمتها فاليتا', // ✅
    ],
    answers: [0, 2, 5],
    levelId: 709,
  ),

  OptionsQuiz(
    id: 70,
    question: 'أي من المدن التالية تطل على البحر الأبيض المتوسط؟',
    imagePath: null,
    categoryId: 2, // مدن وعواصم
    options: [
      'برشلونة', // ✅
      'المرية', // ✅
      'مالقة', // ✅
      'مدريد', // ❌
      'ميلانو', // ❌
      'بورتو', // ❌
      'نابولي', // ✅
      'فالنسيا', // ✅
      'قرطبة', // ❌
    ],
    answers: [0, 1, 2, 6, 7],
    levelId: 710,
  ),
];
