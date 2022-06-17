import 'package:flutter/material.dart';
import 'package:portfolio/app/core/extensions/context.dart';

import '../../../core/configs/configs.dart';
import '../../../core/utils/utils_functions.dart';

import '../widgets/menu/menu_mobile.dart';
import '../widgets/menu/menu_web.dart';
import 'about_page.dart';
import 'contact_page.dart';
import 'projects_page.dart';
import 'skills_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double offset = 0.0;

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsApp.graphite,
      width: context.screenSize.width,
      height: context.screenSize.height,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 2400, minWidth: 480),
        child: LayoutBuilder(builder: (context, constraints) {
          return Scaffold(
            body: NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification) {
                return Utils.getOnScrollOffset(scrollNotification, offset);
              },
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    top: -.25 * offset,
                    child: Container(
                      color: ColorsApp.graphite,
                      height: context.screenSize.height,
                      width: context.screenSize.width,
                    ),
                  ),
                  Scrollbar(
                    controller: scrollController,
                    thumbVisibility: true,
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          AboutPage(),
                          ProjectsPage(),
                          SkillsPage(),
                          ContactPage()
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _returnTrueOrFalse(constraints, context),
                    replacement: MobileMenu(
                      scrollController: scrollController,
                    ),
                    child: WebMenu(
                      heigth: context.screenSize.height,
                      scrollController: scrollController,
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

bool _returnTrueOrFalse(BoxConstraints constraints, BuildContext context) {
  if (constraints.maxWidth > DefaultValues.mobileMax) {
    return true;
  } else {
    return false;
  }
}
