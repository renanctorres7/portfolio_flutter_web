import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:portfolio/app/features/domain/usecases/show_projects_usecase.dart';
import 'package:dartz/dartz.dart';

import '../../../core/constants/status.dart';
import '../../domain/entities/projects_entity.dart';
import '../../domain/errors/errors.dart';

class ProjectsController extends GetxController {
  final ShowProjectsUsecase usecase;

  ProjectsController({
    required this.usecase,
  }) : super();

  PageController pageController = PageController();
  var projectsList = <ProjectsEntity>[].obs;

  @override
  onReady() {
    super.onReady();
    addProjectsToList();
  }

  Future<Either<FailureShow, List<ProjectsEntity>>> getProjectsList() async {
    return await usecase();
  }

  var loadingStatus = StatusLoading.loading.obs;

  Future<void> addProjectsToList() async {
    final result = await getProjectsList();

    result.fold((failure) => null, (List<ProjectsEntity> value) {
      if (value.isNotEmpty) {
        projectsList.value = value;

        loadingStatus.value = StatusLoading.complete;
      } else if (value.isEmpty) {
        loadingStatus.value = StatusLoading.empty;
      } else {
        loadingStatus.value = StatusLoading.none;
      }
    });
  }
}
