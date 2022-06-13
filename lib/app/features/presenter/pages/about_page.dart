import 'package:flutter/material.dart';
import 'package:portfolio/app/core/constants/colors.dart';

import '../widgets/widgets.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomLayout(
        color: ColorsApp.graphite,
        webWidget: aboutPageWeb(),
        mobileWidget: aboutPageMobile());
  }
}
