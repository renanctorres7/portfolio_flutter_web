import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/core/extensions/context.dart';

import '../../../../core/constants/constants.dart';

import '../../blocs/bloc.dart';
import '../widgets.dart';

class SkillsPageWeb extends StatelessWidget {
  const SkillsPageWeb(
      {Key? key,
      required this.pageController,
      required this.bloc,
      required this.pageViewIndex,
      this.onPressed})
      : super(key: key);

  final PageController pageController;
  final SkillsBloc bloc;
  final int pageViewIndex;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
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
                child: const AutoSizeText(
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
        Container(
          height: context.screenSize.height * 0.6,
          width: context.screenSize.width,
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
}
