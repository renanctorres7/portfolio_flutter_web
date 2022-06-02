import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/features/presenter/controller/skills_controller.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/values.dart';
import '../widgets/skills_carousel/common/skills_general_carousel.dart';
import '../widgets/skills_carousel/web/skills_carousel_web.dart';

class SkillsPage extends GetView<SkillsController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            color: ColorsApp.graphite,
            height: constraints.maxWidth > DefaultValues.MOBILE_MAX
                ? size.height * 0.7
                : size.height * 0.9,
            width: size.width,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 800, minWidth: 350),
            child: Container(
              color: ColorsApp.graphite,
              height: constraints.maxWidth > DefaultValues.MOBILE_MAX
                  ? size.height * 0.7
                  : size.height * 0.9,
              width: size.width,
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                    ),
                    Container(
                        width: size.width,
                        height: constraints.maxWidth > DefaultValues.MOBILE_MAX
                            ? size.height * 0.8
                            : size.height * 0.9,
                        child: PageView(
                          children: [
                            SkillsGeneralCarousel(
                              index: controller.index.value,
                            ),
                            SkillsCarouselWeb(),
                          ],
                          controller: controller.pageController,
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
