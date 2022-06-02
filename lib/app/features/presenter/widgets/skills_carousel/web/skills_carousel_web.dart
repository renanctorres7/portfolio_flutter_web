import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/values.dart';
import '../../../controller/skills_controller.dart';
import '../../slide_percent/slide_percent.dart';

class SkillsCarouselWeb extends GetView<SkillsController> {
  const SkillsCarouselWeb({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
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
                  width: 800,
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
                  child: Obx(() => ListView.builder(
                        shrinkWrap: true,
                        itemCount: controller.skillsList.length,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: SlidePercent(
                                width: size.width * 0.68,
                                height: size.height * 0.02,
                                text: controller.skillsList[index].title ?? "",
                                percent: controller.skillsList[index].percent
                                        ?.toDouble() ??
                                    50),
                          );
                        },
                      )),
                ),
                Container(
                  width: size.width * 0.7,
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                      onPressed: () {
                        controller.pageController.previousPage(
                            duration: Duration(seconds: 1),
                            curve: Curves.easeIn);
                      },
                      icon: Icon(
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
