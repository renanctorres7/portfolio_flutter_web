import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/app/features/external/firebase/show_projects/show_projects_firebase_datasource.dart';
import 'package:portfolio/app/features/infra/models/projects_model.dart';

import 'package:portfolio/firebase_options.dart';

import '../../../../../mocks/firebase_mock.dart';

void main() {
  setupFirebaseAuthMocks();
  final firebaseFirestore = FakeFirebaseFirestore();
  final datasource = ShowProjectsFirebaseDatasource(firebaseFirestore);

  Map<String, dynamic>? map;
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      name: 'portfolio',
      options: DefaultFirebaseOptions.currentPlatform,
    );
  });

  test('Should return a Skills List Model from the Skills document on Firebase',
      () async {
    final List<ProjectsModels> list = [];

    await firebaseFirestore
        .collection('porfolio')
        .doc('skills')
        .get()
        .then((value) async => map = value.data());
    map?.forEach((key, map) {
      list.add(ProjectsModels(
          title: map['title'],
          text: map['text'],
          androidUrl: map['androidUrl'],
          iosUrl: map['iosUrl'],
          webUrl: map['webUrl'],
          imageUrl: map['imageUrl']));
    });
    final result = await datasource.getProjectsList();
    expect(result, list);
  });
}
