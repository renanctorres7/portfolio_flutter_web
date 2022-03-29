import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/shared/constants/colors.dart';
import 'package:portfolio/app/shared/constants/values.dart';

import '../../../../modules/modules.dart';
import '../../widgets.dart';

class SkillsCarouselWeb extends GetView<HomeController> {
  final int index;
  final PageController pageCrtl;

  const SkillsCarouselWeb(
      {Key? key, required this.index, required this.pageCrtl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            width: size.width * 0.8,
            padding: constraints.maxWidth > DefaultValues.MOBILE_MAX
                ? EdgeInsets.only(left: 0)
                : EdgeInsets.only(left: 20),
            alignment: constraints.maxWidth > DefaultValues.MOBILE_MAX
                ? Alignment.center
                : Alignment.topLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: size.width * 0.68,
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
                Container(
                  padding: EdgeInsets.only(top: size.height * 0.05),
                  width: constraints.maxWidth > DefaultValues.MOBILE_MAX
                      ? size.width * 0.68
                      : size.width * 0.9,
                  height: constraints.maxWidth > DefaultValues.MOBILE_MAX
                      ? size.height * 0.45
                      : size.height * 0.6,
                  child: ListView(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SlidePercent(
                                width: size.width * 0.68,
                                height: size.height * 0.02,
                                text: 'HTML',
                                percent: 70,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SlidePercent(
                                width: size.width * 0.68,
                                height: size.height * 0.02,
                                text: 'CSS',
                                percent: 50,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SlidePercent(
                                width: size.width * 0.68,
                                height: size.height * 0.02,
                                text: 'Bootstrap',
                                percent: 50,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SlidePercent(
                                width: size.width * 0.68,
                                height: size.height * 0.02,
                                text:
                                    'Banco de dados (relacional, não relacional)',
                                percent: 80,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SlidePercent(
                                width: size.width * 0.68,
                                height: size.height * 0.02,
                                text: 'Firebase',
                                percent: 70,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SlidePercent(
                                width: size.width * 0.68,
                                height: size.height * 0.02,
                                text: 'Git',
                                percent: 90,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SlidePercent(
                                width: size.width * 0.68,
                                height: size.height * 0.02,
                                text: 'Figma',
                                percent: 70,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SlidePercent(
                                width: size.width * 0.68,
                                height: size.height * 0.02,
                                text: 'Flutter',
                                percent: 90,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width * 0.7,
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                      onPressed: () {
                        //controller.animateSlider(index, pageCrtl);
                      },
                      icon: index != 0
                          ? Icon(
                              Icons.arrow_forward_ios,
                              size: 50,
                              color: ColorsApp.gray,
                            )
                          : Icon(
                              Icons.arrow_back_ios_new,
                              size: 50,
                              color: ColorsApp.gray,
                            )),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
