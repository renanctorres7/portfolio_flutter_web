import 'package:flutter/material.dart';
import 'package:portfolio/app/core/extensions/context.dart';

import '../../../../core/configs/configs.dart';
import '../../../../core/utils/utils.dart';

class MenuItemButton extends StatelessWidget {
  const MenuItemButton(
      {Key? key,
      required this.index,
      required this.scrollController,
      required this.title})
      : super(key: key);

  final int index;

  final ScrollController scrollController;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: TextButton(
        style: AppTheme.menuButtonStyle,
        onPressed: () {
          Utils.scrollUntilElementPage(
              index, context.screenSize.height, scrollController);
        },
        child: Text(
          title,
        ),
      ),
    );
  }
}
