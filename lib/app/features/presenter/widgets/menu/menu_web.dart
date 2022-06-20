import 'package:flutter/material.dart';
import 'package:portfolio/app/features/presenter/widgets/menu/menu_web_row.dart';

import '../../../../core/configs/configs.dart';

class WebMenu extends StatefulWidget {
  final double heigth;
  final ScrollController scrollController;
  const WebMenu(
      {Key? key, required this.heigth, required this.scrollController})
      : super(key: key);

  @override
  State<WebMenu> createState() => _WebMenuState();
}

class _WebMenuState extends State<WebMenu> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1920),
        child: Container(
            decoration: AppTheme.menuBoxDecoration,
            height: 80,
            child: MenuWebRow(scrollController: widget.scrollController)),
      ),
    );
  }
}
