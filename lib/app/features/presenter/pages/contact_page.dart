import 'package:flutter/material.dart';

import 'package:portfolio/app/features/presenter/widgets/widgets.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomLayout(
        color: Colors.white,
        webWidget: contactPageWeb(),
        mobileWidget: contactPageMobile(context));
  }
}
