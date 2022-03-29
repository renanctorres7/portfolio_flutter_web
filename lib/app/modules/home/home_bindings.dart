import 'package:get/get.dart';
import 'package:portfolio/app/modules/home/home_controller.dart';
import 'package:portfolio/app/modules/projects/projects_controller.dart';
import 'package:portfolio/app/modules/skills/skills_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    Get.put(ProjectsController());

    Get.put(SkillsController());
  }
}
