import 'package:flutter/material.dart';

import '../../../../core/configs/configs.dart';
import './menu.dart';

class MenuMobileColumn extends StatefulWidget {
  const MenuMobileColumn(
      {Key? key, required this.menuIsOpen, required this.scrollController})
      : super(key: key);

  final bool menuIsOpen;
  final ScrollController scrollController;

  @override
  State<MenuMobileColumn> createState() => _ColumnMenuState();
}

class _ColumnMenuState extends State<MenuMobileColumn> {
  @override
  Widget build(BuildContext context) {
    if (widget.menuIsOpen == true) {
      return Container(
        color: ColorsApp.gray,
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MenuItemButton(
                index: 0,
                scrollController: widget.scrollController,
                title: 'Sobre  '),
            MenuItemButton(
                index: 1,
                scrollController: widget.scrollController,
                title: 'Projetos'),
            MenuItemButton(
                index: 2,
                scrollController: widget.scrollController,
                title: 'Habilidades'),
            MenuItemButton(
                index: 3,
                scrollController: widget.scrollController,
                title: 'Contato'),
          ],
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
