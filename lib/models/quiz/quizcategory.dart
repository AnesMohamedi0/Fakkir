class QuizCategory {
  final int id;
  final String name;

  QuizCategory({required this.id, required this.name});

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name};
  }

  factory QuizCategory.fromMap(Map<String, dynamic> map) {
    return QuizCategory(id: map['id'], name: map['name']);
  }
}
