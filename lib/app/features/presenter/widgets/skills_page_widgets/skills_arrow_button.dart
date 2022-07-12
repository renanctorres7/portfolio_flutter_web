import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/core/extensions/context.dart';

import '../../../../core/configs/configs.dart';

class SkillsArrowButton extends StatelessWidget {
  const SkillsArrowButton(
      {Key? key,
      required this.pageController,
      required this.onPressed,
      required this.valueListenable})
      : super(key: key);

  final PageController pageController;

  final Function() onPressed;
  final ValueListenable<int> valueListenable;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenSize.height * 0.6,
      width: context.screenSize.width,
      alignment: Alignment.bottomRight,
      child: ValueListenableBuilder<int>(
          valueListenable: valueListenable,
          builder: (context, value, _) {
            return IconButton(
                padding: EdgeInsets.zero,
                iconSize: 50,
                onPressed: onPressed,
                icon: Icon(
                  value == 1
                      ? Icons.arrow_back_ios_new
                      : Icons.arrow_forward_ios_outlined,
                  size: 50,
                  color: ColorsApp.gray,
                ));
          }),
    );
  }
}
