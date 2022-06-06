import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:portfolio/app/core/constants/status.dart';
import 'package:portfolio/app/features/domain/usecases/show_projects_usecase.dart';
import 'package:portfolio/app/features/infra/models/projects_model.dart';
import 'package:portfolio/app/features/presenter/blocs/projects/projects_events.dart';
import 'package:portfolio/app/features/presenter/blocs/projects/projects_state.dart';

import '../../../domain/entities/projects_entity.dart';

class ProjectsBloc extends Bloc<ProjectsEvents, ProjectsState> {
  final ShowProjectsUsecase usecase;

  ProjectsBloc(this.usecase) : super(InitialProjectsState()) {
    on<LoadProjectsEvents>((event, emit) async =>
        emit(ProjectsSuccessState(projects: await _getProjectsList())));
  }

  var loadingStatus = StatusLoading.loading;

  Future<List<ProjectsModels>> _getProjectsList() async {
    loadingStatus = StatusLoading.loading;
    final result = await usecase();
    List<ProjectsModels> projects = [];
    return result.fold((l) {
      loadingStatus = StatusLoading.empty;
      return <ProjectsModels>[];
    }, (List<ProjectsEntity> value) {
      for (var item in value) {
        projects.add(ProjectsModels.fromEntity(item));
      }
      loadingStatus = StatusLoading.complete;
      return projects;
    });
  }
}
