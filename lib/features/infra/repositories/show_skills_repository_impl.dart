import 'package:portfolio/features/domain/errors/errors.dart';
import 'package:portfolio/features/domain/entities/skills_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:portfolio/features/domain/repositories/show_skills_repository.dart';
import 'package:portfolio/features/infra/datasources/show_skills_datasource.dart';

class ShowSkillsRepositoryImplementation implements ShowSkillsRepository {
  final ShowSkillsDatasource datasource;

  ShowSkillsRepositoryImplementation(this.datasource);
  @override
  Future<Either<FailureShow, List<SkillsEntity>>> getList() async {
    try {
      final list = await datasource.getSkillsList();
      return Right(list);
    } catch (e) {
      return Left(DatasourceFailure());
    }
  }
}
