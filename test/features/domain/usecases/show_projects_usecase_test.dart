import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio/features/domain/repositories/show_projects_repository.dart';
import 'package:portfolio/features/domain/usecases/show_projects_usecase.dart';

class ShowProjectsRepositoryMock extends Mock
    implements ShowProjectsRepository {}

void main() {
  final repository = ShowProjectsRepositoryMock();
  final usecase = ShowProjectsUsecaseImplementation(repository);
}
