import 'package:flutter/material.dart';

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
  int index = 1;

  @override
  void initState() {
    super.initState();
    bloc = SkillsBloc(s1());
    bloc.add(LoadSkillsEvents());
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
        ),
        mobileWidget: skillsPageMobile(
          context: context,
          pageController: pageController,
          bloc: bloc,
        ));
  }
}
