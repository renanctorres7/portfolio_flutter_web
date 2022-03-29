import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portfolio/app/modules/home/home_page.dart';
import 'package:portfolio/app/routes/app_pages.dart';
import 'package:portfolio/app/shared/constants/colors.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'quicksand'),
      builder: (context, widget) => ResponsiveWrapper.builder(widget,
          maxWidth: 2400,
          minWidth: 480,
          defaultScale: true,
          alignment: Alignment.topCenter,
          breakpoints: [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.resize(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ],
          background: Container(
            color: ColorsApp.graphite,
          )),
      getPages: AppPages.pages,
    );
  }
}
