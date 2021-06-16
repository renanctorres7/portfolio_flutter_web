import 'package:flutter/material.dart';
import 'package:portfolio/app/shared/components/carousel_widget/web/carousel_web_widget.dart';
import 'package:portfolio/app/shared/constants/colors.dart';
import 'package:portfolio/app/shared/constants/text.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    ScrollController? scrollController = ScrollController();

    return LayoutBuilder(builder: (context, constraints) {
      print(constraints.maxWidth);
      return Container(child: CarouselWeb());
    });
  }
}
