import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/features/domain/usecases/show_skills.dart';
import 'package:dartz/dartz.dart';

import '../../../core/constants/status.dart';
import '../../domain/entities/skills_entity.dart';
import '../../domain/errors/errors.dart';

class SkillsController extends GetxController {
  final ShowSkillsUsecase usecase;

  SkillsController({required this.usecase});

  PageController pageController = PageController(initialPage: 0);

  var loadingStatus = StatusLoading.loading.obs;
  var index = 1.obs;

  @override
  onReady() {
    super.onReady();
    addSkillsToList();
  }

  @override
  onInit() {
    super.onInit();
  }

  Future<Either<FailureShow, List<SkillsEntity>>> getList() async {
    return await usecase();
  }

  var skillsList = <SkillsEntity>[].obs;

  addSkillsToList() async {
    final result = await getList();

    result.fold((failure) => null, (List<SkillsEntity>? value) {
      if (value != null && value.isNotEmpty) {
        skillsList.value = value;

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
