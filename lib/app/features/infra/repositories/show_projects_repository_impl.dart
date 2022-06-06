import 'package:dartz/dartz.dart';

import '../../domain/entities/projects_entity.dart';
import '../../domain/errors/errors.dart';
import '../../domain/repositories/show_projects_repository.dart';
import '../datasources/show_projects_datasource.dart';

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
