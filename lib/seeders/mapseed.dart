import 'package:general_knowledge_app/models/map.dart';
import 'package:sqflite/sqflite.dart';

Future<void> initMaps(Database db) async {
  List<GameMap> maps = [
    GameMap(id: 1, name: 'المغرب العربي', difficulty: 1, isOpen: true),
    GameMap(id: 2, name: 'مصر والسودان', difficulty: 3),
    GameMap(id: 3, name: 'الخليج العربي', difficulty: 8),
    GameMap(id: 4, name: 'بلاد الشام', difficulty: 11),
    GameMap(id: 5, name: 'منطقة شرق المتوسط', difficulty: 14),
    GameMap(id: 6, name: 'منطقة البلقان', difficulty: 16),
    GameMap(id: 7, name: 'جنوب أوروبا', difficulty: 18),
    GameMap(id: 8, name: 'غرب أوروبا', difficulty: 23),
    GameMap(id: 9, name: 'وسط أوروبا', difficulty: 26),
    GameMap(id: 10, name: 'الجزر البريطانية', difficulty: 28),
    GameMap(id: 11, name: 'منطقة البلطيق', difficulty: 31),
    GameMap(id: 12, name: 'أوروبا الشرقية', difficulty: 33),
    GameMap(id: 13, name: 'منطقة القوقاز', difficulty: 36),
    GameMap(id: 14, name: 'بلاد فارس', difficulty: 38),
    GameMap(id: 15, name: 'آسيا الوسطى', difficulty: 41),
    GameMap(id: 16, name: 'شبه القارة الهندية', difficulty: 43),
    GameMap(id: 17, name: 'شرق آسيا', difficulty: 46),
    GameMap(id: 18, name: 'روسيا وسيبيريا', difficulty: 48),
    GameMap(id: 19, name: 'أمريكا الشمالية', difficulty: 51),
    GameMap(id: 20, name: 'الولايات المتحدة الأمريكية', difficulty: 53),
    GameMap(id: 21, name: 'أمريكا الوسطى والمكسيك', difficulty: 56),
    GameMap(id: 22, name: 'منطقة الكاريبي', difficulty: 58),
    GameMap(id: 23, name: 'منطقة غويانا', difficulty: 61),
    GameMap(id: 24, name: 'البرازيل', difficulty: 63),
    GameMap(id: 25, name: 'أمريكا اللاتينية', difficulty: 66),
    GameMap(id: 26, name: 'غرب أفريقيا', difficulty: 68),
    GameMap(id: 27, name: 'منطقة الصحراء الكبرى', difficulty: 71),
    GameMap(id: 28, name: 'وسط أفريقيا', difficulty: 73),
    GameMap(id: 29, name: 'شرق أفريقيا', difficulty: 76),
    GameMap(id: 30, name: 'جنوب أفريقيا', difficulty: 78),
    GameMap(id: 31, name: 'جنوب آسيا', difficulty: 81),
    GameMap(id: 32, name: 'جنوب شرق آسيا', difficulty: 83),
    GameMap(id: 33, name: 'أوقيانوسيا', difficulty: 86),
    GameMap(id: 34, name: 'أنتاركتيكا', difficulty: 88),
  ];

  for (var map in maps) {
    await db.insert('GameMap', map.toMap());
  }

  for (var i = 1; i < maps.length; i++) {
    await db.update(
      'GameMap',
      {'mapBeforeId': maps[i - 1].id},
      where: 'id = ?',
      whereArgs: [maps[i].id],
    );
  }
}
