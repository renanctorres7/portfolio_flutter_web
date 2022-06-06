import 'package:portfolio/app/features/infra/models/skills_model.dart';

abstract class SkillsState {
  List<SkillsModel>? skills;

  SkillsState({
    required this.skills,
  });
}

class InitialSkillsState extends SkillsState {
  InitialSkillsState() : super(skills: []);
}

class SkillsSuccessState extends SkillsState {
  SkillsSuccessState({required List<SkillsModel> skills})
      : super(skills: skills);
}

class SkillsErrorState extends SkillsState {
  SkillsErrorState() : super(skills: []);
}
