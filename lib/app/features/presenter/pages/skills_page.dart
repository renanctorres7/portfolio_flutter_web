import 'package:flutter/material.dart';
import 'package:portfolio/app/core/utils/utils.dart';

import 'package:portfolio/app/features/presenter/widgets/widgets.dart';

import '../../../core/configs/configs.dart';

import '../blocs/skills/skills_bloc.dart';
import '../blocs/skills/skills_events.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  late SkillsBloc bloc;
  PageController pageController = PageController();
  ValueNotifier<int> valueNotifier = ValueNotifier<int>(0);

  _changePageView() async {
    Utils.changePagePageView(
        numberOfWidgets: 2, pageController: pageController);

    Future.delayed(const Duration(seconds: 1), () {
      if (valueNotifier.value < 1) {
        valueNotifier.value++;
      } else {
        valueNotifier.value = 0;
      }
    });
  }

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
    valueNotifier.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomLayout(
        color: ColorsApp.graphite,
        webWidget: SkillsPageWeb(
          key: const ValueKey('SkillsPageWeb'),
          pageController: pageController,
          bloc: bloc,
          onPressed: _changePageView,
          valueListenable: valueNotifier,
        ),
        mobileWidget: SkillsPageMobile(
          key: const ValueKey('SkillsPageMobile'),
          pageController: pageController,
          bloc: bloc,
          onPressed: _changePageView,
          valueListenable: valueNotifier,
        ));
  }
}
