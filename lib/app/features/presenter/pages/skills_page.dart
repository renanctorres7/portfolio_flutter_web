import 'package:flutter/material.dart';
import 'package:portfolio/app/core/utils/utils.dart';

import 'package:portfolio/app/features/presenter/widgets/widgets.dart';

import '../../../core/constants/theme/colors_app.dart';

import '../../../core/utils/dependency_injection.dart';

import '../blocs/skills/skills_bloc.dart';
import '../blocs/skills/skills_events.dart';

class SkillsPage extends StatefulWidget {
  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  late SkillsBloc bloc;
  PageController pageController = PageController();

  int pageViewIndex = 0;

  _changePageView() async {
    Utils.changePagePageView(
        numberOfWidgets: 2, pageController: pageController);

    Future.delayed(Duration(seconds: 1), () {
      if (pageViewIndex < 1) {
        setState(() {
          pageViewIndex++;
        });
      } else {
        setState(() {
          pageViewIndex = 0;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    bloc = SkillsBloc(s1());
    bloc.add(LoadSkillsEvents());
    setState(() {
      pageViewIndex = 0;
    });
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomLayout(
        color: ColorsApp.graphite,
        webWidget: skillsPageWeb(
            context: context,
            pageController: pageController,
            bloc: bloc,
            pageViewIndex: pageViewIndex,
            onPressed: _changePageView),
        mobileWidget: skillsPageMobile(
          context: context,
          pageController: pageController,
          bloc: bloc,
          onPressed: _changePageView,
          pageViewIndex: pageViewIndex,
        ));
  }
}
