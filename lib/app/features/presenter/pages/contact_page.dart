import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/values.dart';
import '../widgets/contact/contact_mobile.dart';
import '../widgets/contact/contact_web.dart';


class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final size = MediaQuery.of(context).size;
      return Container(
        padding: constraints.maxWidth > DefaultValues.MOBILE_MAX
            ? EdgeInsets.only(left: 0)
            : EdgeInsets.only(left: 60),
        width: size.width,
        height: constraints.maxWidth > DefaultValues.MOBILE_MAX
            ? size.height * 0.6
            : size.height * 0.9,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: constraints.maxWidth > DefaultValues.MOBILE_MAX
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            children: [
              Container(
                height:
                    constraints.maxWidth > DefaultValues.MOBILE_MAX ? 100 : 50,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 800, minWidth: 350),
                child: Container(
                  width: size.width * 0.8,
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText(
                    'Contato',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 26,
                        color: ColorsApp.graphite,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              Container(
                height: 30,
              ),
              constraints.maxWidth > DefaultValues.MOBILE_MAX
                  ? ContactWeb()
                  : ContactMobile(),
            ],
          ),
        ),
      );
    });
  }
}