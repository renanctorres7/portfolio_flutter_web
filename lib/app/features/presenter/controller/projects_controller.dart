import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:portfolio/app/features/domain/usecases/show_projects_usecase.dart';
import 'package:dartz/dartz.dart';

import '../../domain/entities/projects_entity.dart';
import '../../domain/errors/errors.dart';
import '../../infra/models/projects_model.dart';

class ProjectsController extends GetxController {
  final ShowProjectsUsecase usecase;

  ProjectsController({
    required this.usecase,
  }) : super();

  PageController pageController = PageController();
  var projectsList = <ProjectsModels>[].obs;

  Future<Either<FailureShow, List<ProjectsEntity>>> getProjectsList() async {
    return await usecase();
  }
}
