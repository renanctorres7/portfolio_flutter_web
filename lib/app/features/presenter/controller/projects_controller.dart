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
    addToList();
  }

  Future<Either<FailureShow, List<ProjectsEntity>>> getProjectsList() async {
    return await usecase();
  }

  var loadingStatus = StatusLoading.loading.obs;

  addToList() async {
    final result = await getProjectsList();

    result.fold((failure) => null, (List<ProjectsEntity>? value) {
      if (value != null && value.isNotEmpty) {
        projectsList.value = value;

        Future.delayed(const Duration(seconds: 1),
            () => loadingStatus.value = StatusLoading.complete);
      } else if (value != null && value.isEmpty) {
        Future.delayed(const Duration(seconds: 1),
            () => loadingStatus.value = StatusLoading.empty);
      } else if (value == null) {
        Future.delayed(const Duration(seconds: 1),
            () => loadingStatus.value = StatusLoading.error);
      } else {
        Future.delayed(const Duration(seconds: 1),
            () => loadingStatus.value = StatusLoading.none);
      }
    });
  }
}
