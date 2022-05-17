import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../infra/models/projects_model.dart';

class ProjectsController extends GetxController {
  PageController pageController = PageController();
  var projectsList = <ProjectsModels>[].obs;
}
