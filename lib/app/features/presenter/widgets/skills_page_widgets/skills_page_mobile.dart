import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/core/extensions/context.dart';

import '../../blocs/skills/skills_bloc.dart';
import '../widgets.dart';

class SkillsPageMobile extends StatelessWidget {
  const SkillsPageMobile(
      {Key? key,
      required this.pageController,
      required this.bloc,
      required this.onPressed,
      required this.valueListenable})
      : super(key: key);

  final PageController pageController;
  final SkillsBloc bloc;

  final Function() onPressed;
  final ValueListenable<int> valueListenable;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomTitle(title: 'Habilidades', textIsWhite: true),
            Container(
                alignment: Alignment.centerLeft,
                width: context.screenSize.width,
                height: context.screenSize.height,
                child: PageView(
                  controller: pageController,
                  children: [
                    const SkillsGeneralItem(
                      isWeb: false,
                    ),
                    SkillsBlocBuilder(
                      bloc: bloc,
                      isWeb: false,
                    )
                  ],
                )),
          ],
        ),
        SkillsArrowButton(
          pageController: pageController,
          onPressed: onPressed,
          valueListenable: valueListenable,
        )
      ],
    );
  }
}
