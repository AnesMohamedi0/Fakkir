import 'package:flutter/material.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';

class CategoryContainer extends StatelessWidget {
  final int id;
  const CategoryContainer({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        color: categoryColor[id] ?? Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(horizontal: height * 0.017),
      child: SubTitleText(
        text: categoryName[id] ?? '',
        size: height * 0.017,
        color: Colors.white,
        weight: FontWeight.bold,
      ),
    );
  }
}

final Map<int, String> categoryName = {
  1: 'جغرافيا عامة',
  2: 'مدن وعواصم',
  3: 'ديانات',
  4: 'بحار ومحيطات',
  5: 'لغات',
  6: 'أعلام وأشكال',
  7: 'مساحات وسكان',
  8: 'قارات ودول',
  9: 'عملات',
  10: 'اقتصاد',
  11: 'تاريخ',
  12: 'مسطحات مائية',
};

final Map<int, Color> categoryColor = {
  1: Colors.red.shade700,
  2: Colors.yellow.shade700,
  3: Colors.green.shade700,
  4: Colors.cyan.shade700,
  5: Colors.pink.shade700,
  6: Colors.indigo.shade700,
  7: Colors.orange.shade700,
  8: Colors.purple.shade700,
  9: Colors.teal.shade700,
  10: Colors.brown.shade700,
  11: Colors.deepOrange.shade700,
  12: Colors.blue.shade700,
};
