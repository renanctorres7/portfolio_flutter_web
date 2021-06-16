import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/shared/components/carousel_widget/web/carousel_web_store.dart';
import 'package:portfolio/app/shared/components/carousel_widget/web/component_carousel_web.dart';

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

    return Container(
      child: Column(
        children: [
          Container(
            height: 150,
          ),
          Container(
            width: size.width,
            height: size.height * 0.4,
            child: PageView(
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
            ),
          ),
        ],
      ),
    );
  }
}
