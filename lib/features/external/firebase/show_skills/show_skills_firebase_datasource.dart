import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/features/infra/datasources/show_skills_datasource.dart';
import 'package:portfolio/features/infra/models/skills_model.dart';

class ShowSkillsFirebaseDatasource implements ShowSkillsDatasource {
  FirebaseFirestore firebaseFirestore;

  ShowSkillsFirebaseDatasource(this.firebaseFirestore);
  @override
  Future<List<SkillsModel>> getSkillsList() async {
    firebaseFirestore = FirebaseFirestore.instance;
    List<SkillsModel> list = [];
    Map<String, dynamic>? map;

    try {
      firebaseFirestore
          .collection('portfolio')
          .doc('skills')
          .get()
          .then((value) {
        if (value.data() != null) {
          map = value.data();
        }
      });

      if (map != null) {
        map?.forEach((key, value) {
          list.add(SkillsModel(title: key, percent: int.parse(value)));
        });
      }
      return list;
    } on FirebaseException catch (e) {
      //TODO implementar snackbar
      throw FirebaseException(plugin: 'Exception');
    }
  }
}
