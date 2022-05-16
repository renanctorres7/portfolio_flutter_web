import 'package:portfolio/features/infra/models/skills_model.dart';

abstract class SkillsDatasource {
  Future<List<SkillsModel>> getSkillsList();
}
