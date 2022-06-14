import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/utils_functions.dart';
import '../../blocs/bloc.dart';
import '../widgets.dart';

Widget skillsPageWeb(
    {required BuildContext context,
    required PageController pageController,
    required SkillsBloc bloc,
    required int pageViewIndex,
    required Function()? onPressed}) {
  return Stack(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              width: 900,
              alignment: Alignment.centerLeft,
              child: AutoSizeText(
                'Habilidades',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
          Container(
              alignment: Alignment.centerLeft,
              width: Utils.sizeQuery(context).width,
              height: 600,
              child: PageView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: skillsGeneralItems(
                      context: context,
                      isWeb: true,
                    ),
                  ),
                  skillsBlocBuilder(bloc: bloc, isWeb: true)
                ],
                controller: pageController,
              )),
        ],
      ),
      Container(
        height: Utils.sizeQuery(context).height * 0.6,
        width: Utils.sizeQuery(context).width,
        alignment: Alignment.bottomRight,
        child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: onPressed,
            icon: Icon(
              pageViewIndex == 1
                  ? Icons.arrow_back_ios_new
                  : Icons.arrow_forward_ios_outlined,
              size: 50,
              color: ColorsApp.gray,
            )),
      )
    ],
  );
}
