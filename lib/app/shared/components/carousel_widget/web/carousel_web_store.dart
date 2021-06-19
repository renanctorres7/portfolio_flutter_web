import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'carousel_web_store.g.dart';

class CarouselWebStore = _CarouselWebStoreBase with _$CarouselWebStore;

abstract class _CarouselWebStoreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }

  @action
  Future<void> animateSlider(int index, PageController pageController) async {
    pageController.animateToPage(index,
        duration: Duration(seconds: 1), curve: Curves.easeIn);
  }
}
