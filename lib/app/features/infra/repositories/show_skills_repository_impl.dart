import 'package:dartz/dartz.dart';

import '../../domain/entities/skills_entity.dart';
import '../../domain/errors/errors.dart';
import '../../domain/repositories/show_skills_repository.dart';
import '../datasources/show_skills_datasource.dart';

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
