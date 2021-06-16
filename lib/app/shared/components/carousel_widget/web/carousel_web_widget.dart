import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/shared/components/carousel_widget/mobile/component_carousel_mobile.dart';
import 'package:portfolio/app/shared/components/carousel_widget/web/carousel_web_store.dart';
import 'package:portfolio/app/shared/components/carousel_widget/web/component_carousel_web.dart';
import 'package:portfolio/app/shared/constants/values.dart';

class CarouselWeb extends StatefulWidget {
  @override
  _CarouselWebState createState() => _CarouselWebState();
}

class _CarouselWebState extends ModularState<CarouselWeb, CarouselWebStore> {
  PageController pageController = PageController();

  // void _animateSlider() {
  //   Future.delayed(Duration(seconds: 2)).then((_) {
  //     int nextPage = pageController.page!.round() + 1;

  //     if (nextPage == list.length) {
  //       nextPage = 0;
  //     }

  //     _controller.animateToPage(nextPage,
  //         duration: Duration(seconds: 1), curve: Curves.linear);
  //   });
  // }

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
                height: constraints.maxWidth > MOBILE_MAX ? 100 : 50,
              ),
              Container(
                width: size.width,
                height: constraints.maxWidth > MOBILE_MAX
                    ? size.height * 0.6
                    : size.height * 0.8,
                child: constraints.maxWidth > MOBILE_MAX
                    ? PageView(
                        children: [
                          ComponentCarouselWeb(
                            index: 1,
                            pageCrtl: pageController,
                          ),
                          ComponentCarouselWeb(
                            index: 2,
                            pageCrtl: pageController,
                          ),
                          ComponentCarouselWeb(
                            index: 0,
                            pageCrtl: pageController,
                          ),
                        ],
                        controller: pageController,
                      )
                    : PageView(
                        children: [
                          ComponentCarouselMobile(
                            index: 1,
                            pageCrtl: pageController,
                          ),
                          ComponentCarouselMobile(
                            index: 2,
                            pageCrtl: pageController,
                          ),
                          ComponentCarouselMobile(
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
