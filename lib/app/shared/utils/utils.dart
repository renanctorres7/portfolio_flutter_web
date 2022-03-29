import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class Utils {
  static Future<void> animateSlider(
      int index, PageController pageController) async {
    pageController.animateToPage(index,
        duration: Duration(seconds: 1), curve: Curves.easeIn);
  }

  static void launchURLandroid(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

  static void launchURLios(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

  static void launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}
