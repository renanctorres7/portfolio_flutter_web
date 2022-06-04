import 'package:portfolio/app/features/infra/models/projects_model.dart';

abstract class ProjectsState {
  List<ProjectsModels>? projects;

  ProjectsState({
    required this.projects,
  });
}

class InitialProjectsState extends ProjectsState {
  InitialProjectsState() : super(projects: []);
}

class ProjectsSuccessState extends ProjectsState {
  ProjectsSuccessState({required List<ProjectsModels> projects})
      : super(projects: projects);
}

class ProjectsErrorState extends ProjectsState {
  ProjectsErrorState() : super(projects: null);
}
