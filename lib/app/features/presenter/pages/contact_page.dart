import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomLayout(
        color: Colors.white,
        webWidget: ContactPageWeb(
          key: ValueKey('ContactPageWeb'),
        ),
        mobileWidget: ContactPageMobile(key: ValueKey('ContactPageMobile')));
  }
}
