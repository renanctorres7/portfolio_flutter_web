import 'package:dartz/dartz.dart';

import '../entities/skills.dart';
import '../errors/errors.dart';
import '../repositories/show_skills_repository.dart';

abstract class ShowSkillsUsecase {
  Future<Either<FailureShow, List<Skills>>> call();
}

class ShowSkillsUsecaseImpl implements ShowSkillsUsecase {
  final ShowSkillsRepository repository;

  ShowSkillsUsecaseImpl(this.repository);
  @override
  Future<Either<FailureShow, List<Skills>>> call() async {
    return repository.getList();
  }
}
