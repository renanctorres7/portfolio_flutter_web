import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio/features/infra/datasources/show_skills_datasource.dart';
import 'package:portfolio/features/infra/models/skills_model.dart';
import 'package:portfolio/features/infra/repositories/show_skills_repository_impl.dart';

class ShowSkillsDatasourceMock extends Mock implements ShowSkillsDatasource {}

void main() {
  final datasource = ShowSkillsDatasourceMock();
  final repository = ShowSkillsRepositoryImplementation(datasource);
  List<SkillsModel> list = [];

  test('Should return a Skills Model list', () async {
    when(() => datasource.getSkillsList()).thenAnswer((_) async => list);

    final result = await repository.getList();

    expect(result, Right(list));
    verify(() => datasource.getSkillsList()).called(1);
  });
  test('Should return a Datasource Failure if datasource catchs error',
      () async {});
}
