import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  @observable
  double offset = 0;

  @observable
  ScrollController? scrollController = ScrollController();

  @action
  bool voidOnScroll(ScrollNotification scrollNotification) {
    offset = scrollNotification.metrics.pixels;
    return true;
  }

  @action
  void goToElement(int index, double height) {
    scrollController!.animateTo(
        ((height * 0.7) *
            index), // 100 is the height of container and index of 6th element is 5
        duration: const Duration(milliseconds: 1000),
        curve: Curves.decelerate);
  }
}
