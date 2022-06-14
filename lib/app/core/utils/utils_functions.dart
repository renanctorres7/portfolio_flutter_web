import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/values/default_values.dart';

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
    if (!await launchUrl(Uri.parse(url))) throw 'Could not launcc';
  }

  static Size sizeQuery(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double returnSizeHeight(
      BoxConstraints constraints, BuildContext context, double a, double b) {
    if (constraints.maxWidth > DefaultValues.MOBILE_MAX) {
      return Utils.sizeQuery(context).height * a;
    } else {
      return Utils.sizeQuery(context).height * b;
    }
  }

  static double returnSizeWidth(
      BoxConstraints constraints, BuildContext context, double a, double b) {
    if (constraints.maxWidth > DefaultValues.MOBILE_MAX) {
      return Utils.sizeQuery(context).width * a;
    } else {
      return Utils.sizeQuery(context).width * b;
    }
  }

  static bool getOnScrollOffset(
      ScrollNotification scrollNotification, double offset) {
    offset = scrollNotification.metrics.pixels;
    return true;
  }

  static void scrollUntilElementPage(
      int index, double height, ScrollController scrollController) {
    if (scrollController.hasClients)
      scrollController.animateTo(
          ((height * 0.7) *
              index), // 100 is the height of container and index of 6th element is 5
          duration: const Duration(milliseconds: 1000),
          curve: Curves.decelerate);
  }
}
