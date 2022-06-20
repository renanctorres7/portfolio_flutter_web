import 'package:flutter/material.dart';
import 'package:portfolio/app/core/extensions/context.dart';

import '../../../../core/configs/configs.dart';

class SkillsArrowButton extends StatelessWidget {
  const SkillsArrowButton(
      {Key? key,
      required this.pageController,
      required this.pageViewIndex,
      this.onPressed})
      : super(key: key);

  final PageController pageController;
  final int pageViewIndex;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenSize.height * 0.6,
      width: context.screenSize.width,
      alignment: Alignment.bottomRight,
      child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: onPressed,
          icon: Icon(
            pageViewIndex == 1
                ? Icons.arrow_back_ios_new
                : Icons.arrow_forward_ios_outlined,
            size: 50,
            color: ColorsApp.gray,
          )),
    );
  }
}
