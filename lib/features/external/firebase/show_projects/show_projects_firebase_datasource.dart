import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/features/infra/datasources/show_projects_datasource.dart';
import 'package:portfolio/features/infra/models/projects_model.dart';

class ShowProjectsFirebaseDatasource implements ShowProjectsDatasource {
  FirebaseFirestore firebaseFirestore;

  ShowProjectsFirebaseDatasource(this.firebaseFirestore);
  @override
  Future<List<ProjectsModels>> getProjectsList() async {
    firebaseFirestore = FirebaseFirestore.instance;
    List<ProjectsModels> list = [];
    Map<String, dynamic>? map;

    try {
      firebaseFirestore
          .collection('portfolio')
          .doc('projects')
          .get()
          .then((value) {
        if (value.data() != null) {
          map = value.data();
        }
      });

      if (map != null) {
        map?.forEach((key, map) {
          list.add(ProjectsModels(
              title: map['title'],
              text: map['text'],
              androidUrl: map['androidUrl'],
              iosUrl: map['iosUrl'],
              webUrl: map['webUrl'],
              imageUrl: map['imageUrl']));
        });
      }
      return list;
    } on FirebaseException catch (e) {
      //TODO implementar snackbar
      throw FirebaseException(plugin: 'Exception');
    }
  }
}
