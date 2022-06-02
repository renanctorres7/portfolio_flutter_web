import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/values.dart';
import '../controller/home_controller.dart';
import '../widgets/menu/mobile/mobile_menu.dart';
import '../widgets/menu/web/web_menu.dart';
import 'about_page.dart';
import 'contact_page.dart';
import 'projects_page.dart';
import 'skills_page.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      color: ColorsApp.graphite,
      width: size.width,
      height: size.height,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 2400, minWidth: 480),
        child: LayoutBuilder(builder: (context, constraints) {
          final controller = Get.put(HomeController());
          return Scaffold(
            body: NotificationListener<ScrollNotification>(
              onNotification: controller.voidOnScroll,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    top: -.25 * controller.offset.value,
                    child: Container(
                      color: ColorsApp.graphite,
                      height: size.height,
                      width: size.width,
                    ),
                  ),
                  Scrollbar(
                    controller: controller.scrollController,
                    thumbVisibility: true,
                    child: SingleChildScrollView(
                      controller: controller.scrollController,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AboutPage(),
                          ProjectsPage(),
                          SkillsPage(),
                          ContactPage()
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: constraints.maxWidth > DefaultValues.MOBILE_MAX
                        ? true
                        : false,
                    child: WebMenu(
                      heigth: size.height,
                      scrollController: controller.scrollController!,
                    ),
                    replacement: MobileMenu(
                      height: size.height,
                      scrollController: controller.scrollController!,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
