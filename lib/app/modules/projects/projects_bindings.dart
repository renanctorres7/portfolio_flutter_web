import 'package:get/get.dart';

import '../modules.dart';

class ProjectsBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ProjectsController());
  }
}
