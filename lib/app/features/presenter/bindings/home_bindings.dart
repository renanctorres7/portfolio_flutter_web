import 'package:get/get.dart';
import 'package:portfolio/app/core/utils/dependency_injection.dart';
import 'package:portfolio/app/features/presenter/controller/projects_controller.dart';
import 'package:portfolio/app/features/presenter/controller/skills_controller.dart';

import '../controller/home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    Get.put(ProjectsController(usecase: s1()));
    Get.put(SkillsController(usecase: s1()));
  }
}
