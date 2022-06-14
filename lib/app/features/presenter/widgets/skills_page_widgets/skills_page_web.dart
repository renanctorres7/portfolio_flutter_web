import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/utils_functions.dart';
import '../../blocs/bloc.dart';
import '../widgets.dart';

Widget skillsPageWeb({
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
          'Habilidades',
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 26,
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
                isWeb: true,
              ),
              skillsBlocBuilder(bloc: bloc, isWeb: true)
            ],
            controller: pageController,
          )),
    ],
  );
}
