import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var offset = 0.0.obs;

  ScrollController? scrollController = ScrollController();

  bool voidOnScroll(ScrollNotification scrollNotification) {
    offset.value = scrollNotification.metrics.pixels;
    return true;
  }

  void goToElement(
      int index, double height, ScrollController scrollController) {
    if (scrollController.hasClients)
      scrollController.animateTo(
          ((height * 0.7) *
              index), // 100 is the height of container and index of 6th element is 5
          duration: const Duration(milliseconds: 1000),
          curve: Curves.decelerate);
  }
}
