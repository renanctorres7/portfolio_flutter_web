import 'package:flutter/material.dart';
import 'package:portfolio/app/shared/components/carousel_widget/web/component_carousel_web.dart';

class CarouselWeb extends StatefulWidget {
  @override
  _CarouselWebState createState() => _CarouselWebState();
}

class _CarouselWebState extends State<CarouselWeb> {
  final PageController _controller = PageController();

  List<Widget> list = [
    ComponentCarouselWeb(),
    ComponentCarouselWeb(),
    ComponentCarouselWeb(),
  ];

  void _animateSlider() {
    Future.delayed(Duration(seconds: 2)).then((_) {
      int nextPage = _controller.page!.round() + 1;

      if (nextPage == list.length) {
        nextPage = 0;
      }

      _controller
          .animateToPage(nextPage,
              duration: Duration(seconds: 1), curve: Curves.linear)
          .then((_) => _animateSlider());
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) => _animateSlider());
  }

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
              children: list,
              controller: _controller,
            ),
          ),
        ],
      ),
    );
  }
}
