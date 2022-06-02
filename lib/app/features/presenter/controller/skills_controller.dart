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

  Future<void> addSkillsToList() async {
    final result = await getList();

    result.fold((failure) => null, (List<SkillsEntity> value) {
      if (value.isNotEmpty) {
        skillsList.value = value;

        loadingStatus.value = StatusLoading.complete;
      } else if (value.isEmpty) {
        loadingStatus.value = StatusLoading.empty;
      } else {
        loadingStatus.value = StatusLoading.error;
      }
    });
  }
}
