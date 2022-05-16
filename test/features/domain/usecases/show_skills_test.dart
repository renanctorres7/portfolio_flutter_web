import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio/features/domain/entities/skills.dart';
import 'package:portfolio/features/domain/errors/errors.dart';
import 'package:portfolio/features/domain/repositories/show_skills_repository.dart';
import 'package:portfolio/features/domain/usecases/show_skills.dart';

class ShowSkillsRepositoryMock extends Mock implements ShowSkillsRepository {}

void main() {
  final repository = ShowSkillsRepositoryMock();
  final usecase = ShowSkillsUsecaseImpl(repository);
  final List<Skills> list = [];
  test('Should return a list with the skills results', () async {
    when(() => repository.getList()).thenAnswer((_) async => Right(list));
    final result = await usecase();

    expect(result, Right(list));
    verify(() => repository.getList()).called(1);
  });

  test('Should return a Server Failure when dont succeed', () async {
    when(() => repository.getList())
        .thenAnswer((_) async => Left(ServerFailure()));
    final result = await usecase();

    expect(result, Left(ServerFailure()));
    verify(() => repository.getList()).called(1);
  });
}
