import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/utils.dart';

class ProjectsIconArrowButton extends StatelessWidget {
  const ProjectsIconArrowButton(
      {Key? key,
      required this.pageController,
      required this.lastIndex,
      required this.index})
      : super(key: key);

  final PageController pageController;
  final int lastIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        iconSize: 50,
        padding: EdgeInsets.zero,
        onPressed: () {
          Utils.animateSlider(lastIndex, pageController);
        },
        icon: index != lastIndex
            ? const Icon(
                Icons.arrow_forward_ios,
                size: 50,
                color: ColorsApp.gray1,
              )
            : const Icon(
                Icons.arrow_back_ios_new,
                size: 50,
                color: ColorsApp.gray1,
              ));
  }
}
