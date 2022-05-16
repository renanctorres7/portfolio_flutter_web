import 'package:dartz/dartz.dart';

import '../entities/skills.dart';
import '../errors/errors.dart';

abstract class ShowSkillsRepository {
  Future<Either<FailureShow, List<Skills>>> getList();
}
