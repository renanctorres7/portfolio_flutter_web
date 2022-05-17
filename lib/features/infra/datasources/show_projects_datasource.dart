import 'package:portfolio/features/infra/models/skills_model.dart';

abstract class ShowProjectsDatasource {
  Future<List<SkillsModel>> getProjectsList();
}
