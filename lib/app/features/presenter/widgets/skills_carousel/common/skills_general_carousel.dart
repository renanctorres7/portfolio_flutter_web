import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/values.dart';

import '../../../../../core/utils/utils.dart';
import 'skills_general_card.dart';

class SkillsGeneralCarousel extends StatelessWidget {
  final int index;
  final PageController? pageController;
  const SkillsGeneralCarousel(
      {Key? key, required this.index, required this.pageController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool constraintWidth = constraints.maxWidth > DefaultValues.MOBILE_MAX;
      return Padding(
        padding: constraintWidth
            ? EdgeInsets.symmetric(horizontal: 50)
            : EdgeInsets.zero,
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 500, minWidth: 350),
                    child: Container(
                      padding: constraintWidth
                          ? EdgeInsets.zero
                          : EdgeInsets.only(left: 50, top: 50),
                      width: constraintWidth
                          ? Utils.sizeQuery(context).width * 0.5
                          : 400,
                      alignment: Alignment.centerLeft,
                      child: AutoSizeText(
                        'Habilidades',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 26,
                            color: ColorsApp.white,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 500, minWidth: 350),
                    child: Container(
                      width: Utils.sizeQuery(context).width * 0.5,
                      padding: EdgeInsets.only(
                          top: Utils.sizeQuery(context).height * 0.03),
                      child: constraintWidth
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SkillsGeneralCard(
                                  svgAsset: 'assets/mobile.svg',
                                  title: 'Desenvolvimento Mobile',
                                  text: 'Flutter (Dart)',
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                SkillsGeneralCard(
                                  title: 'UI/UX Design',
                                  text: 'Figma',
                                ),
                              ],
                            )
                          : Padding(
                              padding: constraintWidth
                                  ? EdgeInsets.zero
                                  : EdgeInsets.only(left: 50, top: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 30),
                                    child: SkillsGeneralCard(
                                      svgAsset: 'assets/mobile.svg',
                                      title: 'Desenvolvimento Mobile',
                                      text: 'Flutter (Dart)',
                                    ),
                                  ),
                                  SkillsGeneralCard(
                                    title: 'UI/UX Design',
                                    text: 'Figma',
                                  ),
                                ],
                              ),
                            ),
                    ),
                  ),
                ],
              ),
              Container(
                height: Utils.sizeQuery(context).height * 0.4,
                alignment: Alignment.centerRight,
                padding: constraintWidth
                    ? EdgeInsets.zero
                    : EdgeInsets.only(right: 50),
                child: IconButton(
                    iconSize: 50,
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      pageController?.nextPage(
                          duration: Duration(seconds: 1), curve: Curves.easeIn);
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 50,
                      color: ColorsApp.gray,
                    )),
              )
            ],
          ),
        ),
      );
    });
  }
}
