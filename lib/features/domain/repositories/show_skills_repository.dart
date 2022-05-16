import 'package:dartz/dartz.dart';

import '../entities/skills_entity.dart';
import '../errors/errors.dart';

abstract class ShowSkillsRepository {
  Future<Either<FailureShow, List<SkillsEntity>>> getList();
}
