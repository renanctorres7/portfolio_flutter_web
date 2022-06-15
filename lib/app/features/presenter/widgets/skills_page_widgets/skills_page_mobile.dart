import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/utils.dart';
import '../../blocs/skills/skills_bloc.dart';
import '../widgets.dart';

class SkillsPageMobile extends StatelessWidget {
  const SkillsPageMobile(
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
            Container(
              padding: const EdgeInsets.only(top: 50),
              alignment: Alignment.centerLeft,
              child: const AutoSizeText(
                'Habilidades',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                width: Utils.sizeQuery(context).width,
                height: Utils.sizeQuery(context).height,
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
        Container(
          height: Utils.sizeQuery(context).height * 0.7,
          width: Utils.sizeQuery(context).width,
          alignment: Alignment.bottomRight,
          child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: onPressed,
              icon: Icon(
                pageViewIndex == 1
                    ? Icons.arrow_back_ios_new
                    : Icons.arrow_forward_ios_outlined,
                size: 40,
                color: ColorsApp.gray,
              )),
        )
      ],
    );
  }
}