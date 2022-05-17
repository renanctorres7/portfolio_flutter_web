import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio/features/infra/datasources/show_projects_datasource.dart';
import 'package:portfolio/features/infra/models/projects_model.dart';
import 'package:portfolio/features/infra/repositories/show_projects_repository_impl.dart';

class ShowProjectsDatasourceMock extends Mock
    implements ShowProjectsDatasource {}

void main() {
  final datasource = ShowProjectsDatasourceMock();
  final repository = ShowProjectsRepositoryImplementation(datasource);
  List<ProjectsModels> list = [];

  test('Should return a Projects Model list', () async {
    when(() => datasource.getProjectsList()).thenAnswer((_) async => list);

    final result = await repository.getProjectsList();

    expect(result, Right(list));
    verify(() => datasource.getProjectsList()).called(1);
  });
}
