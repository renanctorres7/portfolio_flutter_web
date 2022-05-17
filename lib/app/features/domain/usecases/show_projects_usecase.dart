import 'package:dartz/dartz.dart';

import '../entities/projects_entity.dart';
import '../errors/errors.dart';
import '../repositories/show_projects_repository.dart';

abstract class ShowProjectsUsecase {
  Future<Either<FailureShow, List<ProjectsEntity>>> call();
}

class ShowProjectsUsecaseImplementation implements ShowProjectsUsecase {
  final ShowProjectsRepository repository;

  ShowProjectsUsecaseImplementation(this.repository);
  @override
  Future<Either<FailureShow, List<ProjectsEntity>>> call() {
    return repository.getProjectsList();
  }
}
