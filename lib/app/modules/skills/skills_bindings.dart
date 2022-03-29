import 'package:get/get.dart';

import '../modules.dart';

class SkillsBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(SkillsController());
  }
}
