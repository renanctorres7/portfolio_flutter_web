import 'package:portfolio/features/domain/errors/errors.dart';
import 'package:portfolio/features/domain/entities/projects_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:portfolio/features/domain/repositories/show_projects_repository.dart';

class ShowProjectsRepositoryImplementation implements ShowProjectsRepository {
  @override
  Future<Either<FailureShow, List<ProjectsEntity>>> getProjectsList() {
    throw UnimplementedError();
  }
}
