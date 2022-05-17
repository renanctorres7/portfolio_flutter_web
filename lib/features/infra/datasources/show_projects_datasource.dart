import 'package:portfolio/features/domain/entities/projects_entity.dart';
import 'package:portfolio/features/infra/models/skills_model.dart';

abstract class ShowProjectsDatasource {
  Future<List<ProjectsEntity>> getProjectsList();
}
