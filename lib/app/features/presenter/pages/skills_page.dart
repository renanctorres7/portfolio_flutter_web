import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/values.dart';
import '../controller/home_controller.dart';
import '../widgets/skills_carousel/common/skills_carousel_common.dart';
import '../widgets/skills_carousel/mobile/skills_carousel_mobile.dart';
import '../widgets/skills_carousel/web/skills_carousel_web.dart';

class SkillsPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 50,
              ),
              Container(
                width: constraints.maxWidth > DefaultValues.MOBILE_MAX
                    ? size.width * 0.9
                    : size.width,
                height: constraints.maxWidth > DefaultValues.MOBILE_MAX
                    ? size.height * 0.8
                    : size.height * 0.9,
                child: constraints.maxWidth > DefaultValues.MOBILE_MAX
                    ? PageView(
                        children: [
                          SkillsCarouselCommon(
                            index: 1,
                            pageCrtl: controller.pageController1,
                          ),
                          SkillsCarouselWeb(
                            index: 0,
                            pageCrtl: controller.pageController1,
                          ),
                        ],
                        controller: controller.pageController1,
                      )
                    : PageView(
                        children: [
                          SkillsCarouselMobile(
                            index: 1,
                            pageCrtl: controller.pageController1,
                          ),
                          SkillsCarouselCommon(
                            index: 0,
                            pageCrtl: controller.pageController1,
                          ),
                        ],
                        controller: controller.pageController1,
                      ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
