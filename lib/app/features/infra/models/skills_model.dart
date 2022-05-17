import 'dart:convert';

import '../../domain/entities/skills_entity.dart';

class SkillsModel extends SkillsEntity {
  SkillsModel({String? title, int? percent})
      : super(title: title, percent: percent);

  Map<String, dynamic> toMap() {
    return {'title': title, 'percent': percent};
  }

  static SkillsModel fromMap(Map<String, dynamic> map) {
    return SkillsModel(title: map['title'], percent: map['percent']);
  }

  String toJson() => jsonEncode(toMap());

  static SkillsModel fromJson(String source) => fromMap(jsonDecode(source));
}
