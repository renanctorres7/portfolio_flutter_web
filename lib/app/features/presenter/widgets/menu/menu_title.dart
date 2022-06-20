import 'package:flutter/material.dart';

import '../../../../core/configs/configs.dart';

class MenuTitle extends StatelessWidget {
  const MenuTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'PORTFÓLIO',
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w700, color: ColorsApp.graphite),
    );
  }
}
