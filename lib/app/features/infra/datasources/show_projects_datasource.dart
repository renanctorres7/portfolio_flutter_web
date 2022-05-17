import '../models/projects_model.dart';

abstract class ShowProjectsDatasource {
  Future<List<ProjectsModels>> getProjectsList();
}
