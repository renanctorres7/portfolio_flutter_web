import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomLayout(
        color: Colors.white,
        webWidget: contactPageWeb(),
        mobileWidget: contactPageMobile(context));
  }
}
