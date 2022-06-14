import 'package:flutter/material.dart';

import '../../../core/constants/theme/colors_app.dart';
import '../../../core/constants/values/default_values.dart';
import '../../../core/utils/utils_functions.dart';

import '../widgets/menu/mobile/mobile_menu.dart';
import '../widgets/menu/web/web_menu.dart';
import 'about_page.dart';
import 'contact_page.dart';
import 'projects_page.dart';
import 'skills_page.dart';

class HomePage extends StatefulWidget {
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
      width: Utils.sizeQuery(context).width,
      height: Utils.sizeQuery(context).height,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 2400, minWidth: 480),
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
                      height: Utils.sizeQuery(context).height,
                      width: Utils.sizeQuery(context).width,
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
                    visible: _returnTrueOrFalse(constraints, context),
                    child: WebMenu(
                      heigth: Utils.sizeQuery(context).height,
                      scrollController: scrollController,
                    ),
                    replacement: MobileMenu(
                      height: Utils.sizeQuery(context).height,
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
  if (constraints.maxWidth > DefaultValues.MOBILE_MAX) {
    return true;
  } else {
    return false;
  }
}
