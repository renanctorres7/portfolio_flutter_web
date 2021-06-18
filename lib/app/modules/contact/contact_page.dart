import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/app/modules/contact/contact_mobile.dart';
import 'package:portfolio/app/modules/contact/contact_web.dart';
import 'package:portfolio/app/modules/contact/widget/contact_page_widget.dart';
import 'package:portfolio/app/shared/constants/colors.dart';
import 'package:portfolio/app/shared/constants/values.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final size = MediaQuery.of(context).size;
      return Container(
        padding: constraints.maxWidth > MOBILE_MAX
            ? EdgeInsets.only(left: 0)
            : EdgeInsets.only(left: 60),
        width: size.width,
        height: constraints.maxWidth > MOBILE_MAX
            ? size.height * 0.6
            : size.height * 0.9,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: constraints.maxWidth > MOBILE_MAX
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            children: [
              Container(
                height: constraints.maxWidth > MOBILE_MAX ? 100 : 50,
              ),
              Container(
                width: size.width * 0.68,
                alignment: Alignment.centerLeft,
                child: AutoSizeText(
                  'Contato',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 26,
                      color: graphite,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                height: 30,
              ),
              constraints.maxWidth > MOBILE_MAX
                  ? ContactWeb()
                  : ContactMobile(),
            ],
          ),
        ),
      );
    });
  }
}
