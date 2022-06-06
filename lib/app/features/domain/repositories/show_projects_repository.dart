import 'package:dartz/dartz.dart';

import '../entities/projects_entity.dart';
import '../errors/errors.dart';

abstract class ShowProjectsRepository {
  Future<Either<FailureShow, List<ProjectsEntity>>> getProjectsList();
}
