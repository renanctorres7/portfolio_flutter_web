import 'package:flutter/material.dart';

class HomeStore {
  double offset = 0.0;

  ScrollController? scrollController = ScrollController();

  bool voidOnScroll(ScrollNotification scrollNotification) {
    offset = scrollNotification.metrics.pixels;
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
