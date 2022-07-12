import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/core/extensions/context.dart';

import '../../blocs/bloc.dart';
import '../widgets.dart';

class SkillsPageWeb extends StatelessWidget {
  const SkillsPageWeb(
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
                height: 600,
                child: PageView(
                  controller: pageController,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 100),
                      child: SkillsGeneralItem(
                        isWeb: true,
                      ),
                    ),
                    SkillsBlocBuilder(bloc: bloc, isWeb: true)
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
