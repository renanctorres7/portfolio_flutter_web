import 'package:get/get.dart';
import 'package:portfolio/app/features/presenter/controller/projects_controller.dart';

import '../controller/home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    Get.put(ProjectsController());
  }
}
