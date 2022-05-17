import 'package:portfolio/features/domain/errors/errors.dart';
import 'package:portfolio/features/domain/entities/projects_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:portfolio/features/domain/repositories/show_projects_repository.dart';
import 'package:portfolio/features/infra/datasources/show_projects_datasource.dart';

class ShowProjectsRepositoryImplementation implements ShowProjectsRepository {
  final ShowProjectsDatasource datasource;

  ShowProjectsRepositoryImplementation(this.datasource);
  @override
  Future<Either<FailureShow, List<ProjectsEntity>>> getProjectsList() async {
    try {
      final list = await datasource.getProjectsList();
      return Right(list);
    } catch (e) {
      return Left(DatasourceFailure());
    }
  }
}
