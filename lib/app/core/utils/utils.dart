import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class Utils {
  static Future<void> animateSlider(
      int lastIndex, PageController pageController) async {
    if (pageController.page == lastIndex) {
      pageController.animateTo(0,
          duration: Duration(seconds: 1), curve: Curves.easeIn);
    } else {
      pageController.nextPage(
          duration: Duration(seconds: 1), curve: Curves.easeIn);
    }
  }

  static launchURL(String url) async {
    if (!await launchUrl(Uri.parse(url))) throw 'Could not launch $url';
  }
}
