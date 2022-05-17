import '../models/skills_model.dart';

abstract class ShowSkillsDatasource {
  Future<List<SkillsModel>> getSkillsList();
}
