import 'package:dartz/dartz.dart';

import '../entities/skills_entity.dart';
import '../errors/errors.dart';
import '../repositories/show_skills_repository.dart';

abstract class ShowSkillsUsecase {
  Future<Either<FailureShow, List<SkillsEntity>>> call();
}

class ShowSkillsUsecaseImpl implements ShowSkillsUsecase {
  final ShowSkillsRepository repository;

  ShowSkillsUsecaseImpl(this.repository);
  @override
  Future<Either<FailureShow, List<SkillsEntity>>> call() async {
    return repository.getList();
  }
}
