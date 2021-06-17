import 'package:flutter/material.dart';
import 'package:portfolio/app/modules/skills/mobile/skills_carousel_mobile.dart';
import 'package:portfolio/app/modules/skills/skills_carousel_web.dart';
import 'package:portfolio/app/modules/skills/skills_carousel_web2.dart';
import 'package:portfolio/app/shared/components/carousel_widget/mobile/component_carousel_mobile.dart';
import 'package:portfolio/app/shared/components/carousel_widget/web/carousel_web_widget.dart';
import 'package:portfolio/app/shared/constants/values.dart';

class SkillsPage extends StatelessWidget {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return LayoutBuilder(builder: (context, constraints) {
      print(constraints.maxWidth);
      return Container(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: constraints.maxWidth > MOBILE_MAX ? 100 : 50,
              ),
              Container(
                width: size.width,
                height: constraints.maxWidth > MOBILE_MAX
                    ? size.height * 0.6
                    : size.height * 0.9,
                child: constraints.maxWidth > MOBILE_MAX
                    ? PageView(
                        children: [
                          SkillsCarouselWeb(
                            index: 1,
                            pageCrtl: pageController,
                          ),
                          SkillsCarouselWeb2(
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
                          SkillsCarouselWeb2(
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