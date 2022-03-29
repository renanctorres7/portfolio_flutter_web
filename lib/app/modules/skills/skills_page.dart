import 'package:flutter/material.dart';
import 'package:portfolio/app/shared/widgets/skills_carousel/mobile/skills_carousel_mobile.dart';
import 'package:portfolio/app/shared/widgets/skills_carousel/common/skills_carousel_common.dart';
import 'package:portfolio/app/shared/widgets/skills_carousel/web/skills_carousel_web.dart';
import 'package:portfolio/app/shared/constants/values.dart';

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    final size = MediaQuery.of(context).size;

    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                height:
                    constraints.maxWidth > DefaultValues.MOBILE_MAX ? 50 : 50,
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
                            pageCrtl: pageController,
                          ),
                          SkillsCarouselWeb(
                            index: 0,
                            pageCrtl: pageController,
                          ),
                        ],
                        controller: pageController,
                      )
                    : PageView(
                        children: [
                          SkillsCarouselMobile(
                            index: 1,
                            pageCrtl: pageController,
                          ),
                          SkillsCarouselCommon(
                            index: 0,
                            pageCrtl: pageController,
                          ),
                        ],
                        controller: pageController,
                      ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
