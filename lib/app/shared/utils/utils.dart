import 'package:flutter/material.dart';

abstract class Utils {
  static Future<void> animateSlider(
      int index, PageController pageController) async {
    pageController.animateToPage(index,
        duration: Duration(seconds: 1), curve: Curves.easeIn);
  }
}
