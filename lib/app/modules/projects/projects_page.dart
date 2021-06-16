import 'package:flutter/material.dart';
import 'package:portfolio/app/shared/components/carousel_widget/web/carousel_web_widget.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    return LayoutBuilder(builder: (context, constraints) {
      print(constraints.maxWidth);
      return Container(child: CarouselWeb());
    });
  }
}
