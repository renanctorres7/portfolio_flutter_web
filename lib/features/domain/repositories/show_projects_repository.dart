import 'package:dartz/dartz.dart';
import 'package:portfolio/features/domain/entities/projects_entity.dart';

import '../errors/errors.dart';

abstract class ShowProjectsRepository {
  Future<Either<FailureShow, List<ProjectsEntity>>> getProjectsList();
}
