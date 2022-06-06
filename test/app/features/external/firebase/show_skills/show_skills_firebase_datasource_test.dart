import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/app/features/external/firebase/show_skills/show_skills_firebase_datasource.dart';
import 'package:portfolio/app/features/infra/models/skills_model.dart';

import 'package:portfolio/firebase_options.dart';

import '../../../../../mocks/firebase_mock.dart';

void main() {
  setupFirebaseAuthMocks();
  final firebaseFirestore = FakeFirebaseFirestore();
  final datasource = ShowSkillsFirebaseDatasource(firebaseFirestore);

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
    final List<SkillsModel> list = [];

    await firebaseFirestore
        .collection('porfolio')
        .doc('skills')
        .get()
        .then((value) async => map = value.data());
    map?.forEach((key, value) {
      list.add(SkillsModel(title: value['title'], percent: value['percent']));
    });
    final result = await datasource.getSkillsList();
    expect(result, list);
  });
}
