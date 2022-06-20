import 'package:flutter/material.dart';
import 'package:portfolio/app/features/presenter/widgets/menu/menu.dart';

class MenuWebRow extends StatelessWidget {
  const MenuWebRow({Key? key, required this.scrollController})
      : super(key: key);

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(padding: EdgeInsets.only(left: 60), child: MenuTitle()),
        Padding(
          padding: const EdgeInsets.only(right: 60),
          child: Row(
            children: [
              MenuItemButton(
                  index: 0,
                  scrollController: scrollController,
                  title: 'Sobre  '),
              MenuItemButton(
                  index: 1,
                  scrollController: scrollController,
                  title: 'Projetos'),
              MenuItemButton(
                  index: 2,
                  scrollController: scrollController,
                  title: 'Habilidades'),
              MenuItemButton(
                  index: 3,
                  scrollController: scrollController,
                  title: 'Contato'),
            ],
          ),
        ),
      ],
    );
  }
}
