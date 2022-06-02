import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/values.dart';

import '../../../controller/skills_controller.dart';
import 'skills_general_card.dart';

class SkillsGeneralCarousel extends GetView<SkillsController> {
  final int index;
  const SkillsGeneralCarousel({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
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
                    padding: constraints.maxWidth > DefaultValues.MOBILE_MAX
                        ? EdgeInsets.zero
                        : EdgeInsets.only(left: 50, top: 50),
                    width: constraints.maxWidth > DefaultValues.MOBILE_MAX
                        ? size.width * 0.5
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
                    width: size.width * 0.5,
                    padding: EdgeInsets.only(top: size.height * 0.03),
                    child: constraints.maxWidth > DefaultValues.MOBILE_MAX
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
                            padding:
                                constraints.maxWidth > DefaultValues.MOBILE_MAX
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
              height: size.height * 0.4,
              alignment: Alignment.centerRight,
              padding: constraints.maxWidth > DefaultValues.MOBILE_MAX
                  ? EdgeInsets.zero
                  : EdgeInsets.only(right: 50),
              child: IconButton(
                  iconSize: 50,
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    controller.pageController.nextPage(
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
      );
    });
  }
}
