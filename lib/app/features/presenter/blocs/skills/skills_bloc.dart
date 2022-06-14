import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:portfolio/app/features/domain/entities/skills_entity.dart';
import 'package:portfolio/app/features/domain/usecases/show_skills.dart';
import 'package:portfolio/app/features/infra/models/skills_model.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/utils.dart';
import '../bloc.dart';

class SkillsBloc extends Bloc<SkillsEvents, SkillsState> {
  final ShowSkillsUsecase usecase;

  SkillsBloc(this.usecase) : super(InitialSkillsState()) {
    on<LoadSkillsEvents>((event, emit) async =>
        emit(SkillsSuccessState(skills: await _getSkillsList())));
  }

  var loadingStatus = StatusLoading.loading;

  Future<List<SkillsModel>> _getSkillsList() async {
    loadingStatus = StatusLoading.loading;
    final result = await usecase();
    List<SkillsModel> skills = [];
    return result.fold((l) {
      loadingStatus = StatusLoading.empty;
      return <SkillsModel>[];
    }, (List<SkillsEntity> value) {
      for (var item in value) {
        skills.add(SkillsModel.fromEntity(item));
      }
      loadingStatus = StatusLoading.complete;
      return skills;
    });
  }
}
