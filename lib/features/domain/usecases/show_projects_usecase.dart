import 'package:dartz/dartz.dart';

import '../entities/projects_entity.dart';
import '../errors/errors.dart';

abstract class ShowProjectsUsecase {
  Future<Either<FailureShow, List<ProjectsEntity>>> call();
}

class ShowProjectsUsecaseImplementation implements ShowProjectsUsecase {
  @override
  Future<Either<FailureShow, List<ProjectsEntity>>> call() {
    throw UnimplementedError();
  }
}
