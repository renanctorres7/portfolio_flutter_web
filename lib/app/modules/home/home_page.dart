import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/modules/about/about_page.dart';
import 'package:portfolio/app/modules/contact/contact_page.dart';
import 'package:portfolio/app/modules/home/home_store.dart';
import 'package:portfolio/app/modules/projects/projects_page.dart';
import 'package:portfolio/app/modules/skills/skills_page.dart';
import 'package:portfolio/app/shared/components/menu/mobile/mobile_menu_page.dart';
import 'package:portfolio/app/shared/components/menu/web/web_menu_page.dart';
import 'package:portfolio/app/shared/constants/colors.dart';
import 'package:portfolio/app/shared/constants/values.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    ScrollController? scrollController = ScrollController();

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: NotificationListener<ScrollNotification>(
          onNotification: controller.voidOnScroll,
          child: Stack(
            children: [
              Positioned(
                top: -.25 * controller.offset,
                child: Container(
                  color: graphite,
                  height: size.height,
                  width: size.width,
                ),
              ),
              Scrollbar(
                controller: scrollController,
                isAlwaysShown: true,
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [
                      Container(
                        height: constraints.maxWidth > MOBILE_MAX
                            ? size.height * 0.7
                            : size.height * 0.9,
                        width: size.width,
                        color: graphite,
                        child: AboutPage(),
                      ),
                      Container(
                        color: white,
                        height: constraints.maxWidth > MOBILE_MAX
                            ? size.height * 0.7
                            : size.height * 0.9,
                        width: size.width,
                        child: ProjectsPage(),
                      ),
                      Container(
                        color: graphite,
                        height: constraints.maxWidth > MOBILE_MAX
                            ? size.height * 0.7
                            : size.height * 0.9,
                        width: size.width,
                        child: SkillsPage(),
                      ),
                      Container(
                        color: white,
                        height: constraints.maxWidth > MOBILE_MAX
                            ? size.height * 0.7
                            : size.height * 0.9,
                        width: size.width,
                        child: ContactPage(),
                      )
                    ],
                  ),
                ),
              ),
              ResponsiveVisibility(
                visible: false,
                visibleWhen: [Condition.largerThan(name: MOBILE)],
                child: WebMenuPage(
                  heigth: size.height,
                  scrollController: scrollController,
                ),
                replacement: MobileMenuPage(
                  height: size.height,
                  scrollController: scrollController,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
