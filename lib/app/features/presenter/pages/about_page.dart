import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../widgets/widgets.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomLayout(
        color: ColorsApp.graphite,
        webWidget: AboutPageWeb(
          key: ValueKey('AboutPageWeb'),
        ),
        mobileWidget: AboutPageMobile(key: ValueKey('AboutPageMobile')));
  }
}
