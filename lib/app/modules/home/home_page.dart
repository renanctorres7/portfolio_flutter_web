import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/modules/about/about_page.dart';
import 'package:portfolio/app/modules/contact/contact_page.dart';
import 'package:portfolio/app/modules/home/home_controller.dart';
import 'package:portfolio/app/modules/projects/projects_page.dart';
import 'package:portfolio/app/modules/skills/skills_page.dart';

import 'package:portfolio/app/shared/constants/colors.dart';
import 'package:portfolio/app/shared/constants/values.dart';
import 'package:responsive_framework/responsive_value.dart' as Responsive;
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../shared/widgets/widgets.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return LayoutBuilder(builder: (context, constraints) {
      final controller = Get.put(HomeController());
      return Scaffold(
        body: NotificationListener<ScrollNotification>(
          onNotification: controller.voidOnScroll,
          child: Stack(
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
                isAlwaysShown: true,
                child: SingleChildScrollView(
                  controller: controller.scrollController,
                  child: Column(
                    children: [
                      Container(
                        height: constraints.maxWidth > DefaultValues.MOBILE_MAX
                            ? size.height * 0.7
                            : size.height * 0.9,
                        width: size.width,
                        color: ColorsApp.graphite,
                        child: AboutPage(),
                      ),
                      Container(
                        color: ColorsApp.white,
                        height: constraints.maxWidth > DefaultValues.MOBILE_MAX
                            ? size.height * 0.7
                            : size.height * 0.9,
                        width: size.width,
                        child: ProjectsPage(),
                      ),
                      Container(
                        color: ColorsApp.graphite,
                        height: constraints.maxWidth > DefaultValues.MOBILE_MAX
                            ? size.height * 0.7
                            : size.height * 0.9,
                        width: size.width,
                        child: SkillsPage(),
                      ),
                      Container(
                        color: ColorsApp.white,
                        height: constraints.maxWidth > DefaultValues.MOBILE_MAX
                            ? size.height * 0.7
                            : size.height * 0.9,
                        width: size.width,
                        child: ContactPage(),
                      )
                    ],
                  ),
                ),
              ),
              Responsive.ResponsiveVisibility(
                visible: false,
                visibleWhen: [Responsive.Condition.largerThan(name: MOBILE)],
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
    });
  }
}
