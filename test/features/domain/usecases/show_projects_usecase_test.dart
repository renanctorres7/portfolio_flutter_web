import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio/features/domain/entities/projects_entity.dart';
import 'package:portfolio/features/domain/errors/errors.dart';
import 'package:portfolio/features/domain/repositories/show_projects_repository.dart';
import 'package:portfolio/features/domain/usecases/show_projects_usecase.dart';

class ShowProjectsRepositoryMock extends Mock
    implements ShowProjectsRepository {}

void main() {
  final repository = ShowProjectsRepositoryMock();
  final usecase = ShowProjectsUsecaseImplementation(repository);
  List<ProjectsEntity> list = [];

  test('Should return a list with Projects results', () async {
    when(() => repository.getProjectsList())
        .thenAnswer((_) async => Right(list));

    final result = await usecase();

    expect(result, Right(list));
    verify(() => repository.getProjectsList()).called(1);
  });

  test('Should return a Server Failure when dont succeed', () async {
    when(() => repository.getProjectsList())
        .thenAnswer((_) async => Left(ServerFailure()));

    final result = await usecase();

    expect(result, Left(ServerFailure()));
    verify(() => repository.getProjectsList()).called(1);
  });
}
