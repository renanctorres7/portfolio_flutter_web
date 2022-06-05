import 'package:bot_toast/bot_toast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/core/constants/colors.dart';

import '../../../infra/datasources/show_projects_datasource.dart';
import '../../../infra/models/projects_model.dart';

class ShowProjectsFirebaseDatasource implements ShowProjectsDatasource {
  FirebaseFirestore firebaseFirestore;

  ShowProjectsFirebaseDatasource(this.firebaseFirestore);
  @override
  Future<List<ProjectsModels>> getProjectsList() async {
    firebaseFirestore = FirebaseFirestore.instance;
    List<ProjectsModels> list = [];

    try {
      final docRef = firebaseFirestore.collection('portfolio').doc('projects');

      final result = await docRef.get().then((value) async => value.data());

      result!.values.toList().forEach((element) {
        for (var item in element) {
          list.add(ProjectsModels.fromMap(item));
        }
      });

      return list;
    } on FirebaseException catch (e) {
      BotToast.showText(
        text: e.message.toString(),
      );
      throw FirebaseException(plugin: 'Exception');
    }
  }
}
