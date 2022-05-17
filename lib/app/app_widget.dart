import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portfolio/app/core/routes/app_pages.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'quicksand'),
      getPages: AppPages.pages,
    );
  }
}
