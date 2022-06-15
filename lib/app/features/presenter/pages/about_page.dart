import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../widgets/widgets.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomLayout(
        color: ColorsApp.graphite,
        webWidget: AboutPageWeb(
          key: ValueKey('AboutPageWeb'),
        ),
        mobileWidget: AboutPageMobile(key: ValueKey('AboutPageMobile')));
  }
}
