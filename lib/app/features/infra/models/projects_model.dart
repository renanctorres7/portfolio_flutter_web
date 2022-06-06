import 'dart:convert';

import '../../domain/entities/projects_entity.dart';

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
        androidUrl: map['android_url'],
        iosUrl: map['ios_url'],
        webUrl: map['web_url'],
        imageUrl: map['image_url']);
  }

  String toJson() => jsonEncode(toMap());

  static ProjectsModels fromJson(String source) => fromMap(jsonDecode(source));

  factory ProjectsModels.fromEntity(ProjectsEntity entity) => ProjectsModels(
      title: entity.title,
      text: entity.text,
      androidUrl: entity.androidUrl,
      iosUrl: entity.iosUrl,
      webUrl: entity.webUrl,
      imageUrl: entity.imageUrl);
}
