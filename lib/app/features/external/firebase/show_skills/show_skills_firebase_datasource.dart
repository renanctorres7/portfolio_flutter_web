import 'package:bot_toast/bot_toast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../infra/datasources/show_skills_datasource.dart';
import '../../../infra/models/skills_model.dart';

class ShowSkillsFirebaseDatasource implements ShowSkillsDatasource {
  FirebaseFirestore firebaseFirestore;

  ShowSkillsFirebaseDatasource(this.firebaseFirestore);
  @override
  Future<List<SkillsModel>> getSkillsList() async {
    firebaseFirestore = FirebaseFirestore.instance;
    List<SkillsModel> list = [];

    try {
      final docRef = firebaseFirestore.collection('portfolio').doc('skills');

      final result = await docRef.get().then((value) async => value.data());

      result!.values.toList().forEach((element) {
        list.add(SkillsModel.fromMap(element));
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
