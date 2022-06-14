import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/utils.dart';
import '../../blocs/skills/skills_bloc.dart';
import '../widgets.dart';

Widget skillsPageMobile({
  required BuildContext context,
  required PageController pageController,
  required SkillsBloc bloc,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 50,
      ),
      Container(
        width: 900,
        alignment: Alignment.centerLeft,
        child: AutoSizeText(
          'Habilidade',
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 24,
              color: ColorsApp.graphite,
              fontWeight: FontWeight.w800),
        ),
      ),
      Container(
          width: Utils.sizeQuery(context).width,
          height: Utils.sizeQuery(context).height * 0.8,
          child: PageView(
            children: [
              skillsGeneralItems(
                context: context,
                isWeb: false,
              ),
              skillsBlocBuilder(
                bloc: bloc,
                isWeb: false,
              )
            ],
            controller: pageController,
          )),
    ],
  );
}
