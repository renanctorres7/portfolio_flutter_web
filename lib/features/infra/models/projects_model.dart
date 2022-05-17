import 'dart:convert';

import 'package:portfolio/features/domain/entities/projects_entity.dart';

class ProjectsModels extends ProjectsEntity {
  ProjectsModels({
    String? title,
    String? text,
    String? androidUrl,
    String? iosUrl,
    String? webUrl,
    String? imageUrl,
  }) : super(
            title: title,
            text: text,
            androidUrl: androidUrl,
            iosUrl: iosUrl,
            webUrl: webUrl,
            imageUrl: imageUrl);

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'text': text,
      'androidUrl': androidUrl,
      'iosUrl': iosUrl,
      'webUrl': webUrl,
      'imageUrl': imageUrl
    };
  }

  static ProjectsModels fromMap(Map<String, dynamic> map) {
    return ProjectsModels(
        title: map['title'],
        text: map['text'],
        androidUrl: map['androidUrl'],
        iosUrl: map['iosUrl'],
        webUrl: map['webUrl'],
        imageUrl: map['imageUrl']);
  }

  String toJson() => jsonEncode(toMap());

  static ProjectsModels fromJson(String source) => fromMap(jsonDecode(source));
}
