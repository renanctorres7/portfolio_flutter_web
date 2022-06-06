import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:portfolio/app/features/domain/repositories/show_projects_repository.dart';
import 'package:portfolio/app/features/domain/usecases/show_projects_usecase.dart';
import 'package:portfolio/app/features/external/firebase/show_projects/show_projects_firebase_datasource.dart';
import 'package:portfolio/app/features/infra/datasources/show_projects_datasource.dart';
import 'package:portfolio/app/features/infra/repositories/show_projects_repository_impl.dart';

import '../../features/domain/repositories/show_skills_repository.dart';
import '../../features/domain/usecases/show_skills.dart';
import '../../features/external/firebase/show_skills/show_skills_firebase_datasource.dart';
import '../../features/infra/datasources/show_skills_datasource.dart';
import '../../features/infra/repositories/show_skills_repository_impl.dart';

final s1 = GetIt.instance;

class DependencyInjection {
  static init() {
    s1.registerSingleton<FirebaseFirestore>(FirebaseFirestore.instance);
    s1.registerSingleton<ShowProjectsDatasource>(
        ShowProjectsFirebaseDatasource(s1()));
    s1.registerSingleton<ShowSkillsDatasource>(
        ShowSkillsFirebaseDatasource(s1()));
    s1.registerSingleton<ShowProjectsRepository>(
        ShowProjectsRepositoryImplementation(s1()));
    s1.registerSingleton<ShowSkillsRepository>(
        ShowSkillsRepositoryImplementation(s1()));

    s1.registerSingleton<ShowProjectsUsecase>(
        ShowProjectsUsecaseImplementation(s1()));
    s1.registerSingleton<ShowSkillsUsecase>(ShowSkillsUsecaseImpl(s1()));
  }
}
