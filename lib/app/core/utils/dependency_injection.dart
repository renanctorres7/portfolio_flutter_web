import 'package:get_it/get_it.dart';
import 'package:portfolio/app/features/domain/repositories/show_projects_repository.dart';
import 'package:portfolio/app/features/domain/usecases/show_projects_usecase.dart';
import 'package:portfolio/app/features/external/firebase/show_projects/show_projects_firebase_datasource.dart';
import 'package:portfolio/app/features/infra/datasources/show_projects_datasource.dart';
import 'package:portfolio/app/features/infra/repositories/show_projects_repository_impl.dart';

final s1 = GetIt.instance;

class DependencyInjection {
  static init() {
    s1.registerSingleton<ShowProjectsRepository>(
        ShowProjectsRepositoryImplementation(s1()));
    s1.registerSingleton<ShowProjectsDatasource>(
        ShowProjectsFirebaseDatasource(s1()));
    s1.registerSingleton<ShowProjectsUsecase>(
        ShowProjectsUsecaseImplementation(s1()));
  }
}
