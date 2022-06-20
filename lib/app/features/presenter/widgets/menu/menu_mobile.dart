import 'package:flutter/material.dart';
import 'package:portfolio/app/core/extensions/context.dart';
import 'package:portfolio/app/features/presenter/widgets/menu/menu.dart';

import '../../../../core/configs/configs.dart';

class MobileMenu extends StatefulWidget {
  final ScrollController scrollController;
  const MobileMenu({Key? key, required this.scrollController})
      : super(key: key);

  @override
  State<MobileMenu> createState() => _MobileMenuState();
}

class _MobileMenuState extends State<MobileMenu> {
  bool menuIsOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenSize.width,
      decoration: AppTheme.menuBoxDecoration,
      height: menuIsOpen == false ? 80 : 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                  padding: EdgeInsets.only(left: 20), child: MenuTitle()),
              Container(
                padding: const EdgeInsets.only(right: 20),
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        menuIsOpen = !menuIsOpen;
                      });
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: ColorsApp.graphite,
                    )),
              )
            ],
          ),
          MenuMobileColumn(
            menuIsOpen: menuIsOpen,
            scrollController: widget.scrollController,
          ),
        ],
      ),
    );
  }
}
