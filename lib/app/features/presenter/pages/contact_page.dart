import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomLayout(
        color: Colors.white,
        webWidget: ContactPageWeb(
          key: ValueKey('ContactPageWeb'),
        ),
        mobileWidget: ContactPageMobile(key: ValueKey('ContactPageMobile')));
  }
}
