import 'dart:convert';

import '../../domain/entities/skills_entity.dart';

class SkillsModel extends SkillsEntity {
  SkillsModel({String? title, int? percent})
      : super(title: title, percent: percent);

  Map<String, dynamic> toMap() {
    return {'name': title, 'percent': percent};
  }

  static SkillsModel fromMap(Map<String, dynamic> map) {
    return SkillsModel(title: map['name'], percent: map['percent']);
  }

  String toJson() => jsonEncode(toMap());

  static SkillsModel fromJson(String source) => fromMap(jsonDecode(source));

  factory SkillsModel.fromEntity(SkillsEntity entity) =>
      SkillsModel(title: entity.title, percent: entity.percent);
}
