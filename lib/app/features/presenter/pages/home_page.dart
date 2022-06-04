import 'package:flutter/material.dart';

import 'package:portfolio/app/features/presenter/stores/home_store.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/values.dart';
import '../../../core/utils/utils.dart';

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
  final store = HomeStore();

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
              onNotification: store.voidOnScroll,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    top: -.25 * store.offset,
                    child: Container(
                      color: ColorsApp.graphite,
                      height: Utils.sizeQuery(context).height,
                      width: Utils.sizeQuery(context).width,
                    ),
                  ),
                  Scrollbar(
                    controller: store.scrollController,
                    thumbVisibility: true,
                    child: SingleChildScrollView(
                      controller: store.scrollController,
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
                      scrollController: store.scrollController!,
                    ),
                    replacement: MobileMenu(
                      height: Utils.sizeQuery(context).height,
                      scrollController: store.scrollController!,
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
