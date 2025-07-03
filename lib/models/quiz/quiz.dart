abstract class Quiz {
  int id;
  String question;
  String? imagePath;
  int categoryId;
  int levelId;

  Quiz({
    required this.id,
    required this.question,
    this.imagePath,
    required this.categoryId,
    required this.levelId,
  });

  Map<String, dynamic> toMap();
}
