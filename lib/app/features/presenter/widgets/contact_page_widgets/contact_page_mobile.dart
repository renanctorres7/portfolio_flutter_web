import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/texts/contact_texts.dart';
import '../../../../core/utils/utils.dart';
import '../contact_widget/contact_widget.dart';

Widget contactPageMobile(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(left: 60),
    width: Utils.sizeQuery(context).width,
    child: Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Container(
          padding: EdgeInsets.only(left: 60),
          width: 900,
          alignment: Alignment.centerLeft,
          child: AutoSizeText(
            'Contato',
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 24,
                color: ColorsApp.graphite,
                fontWeight: FontWeight.w800),
          ),
        ),
        Container(
          height: 30,
        ),
        ContactWidget(
          image: 'assets/whats.svg',
          text: "(61) 99917-4230",
          url: ContactTexts.urlPhone,
          isMobile: true,
        ),
        SizedBox(
          height: 30,
        ),
        ContactWidget(
          image: 'assets/arroba.svg',
          text: "renanctorres7@gmail.com",
          url: ContactTexts.urlEmail,
          isMobile: true,
        ),
        SizedBox(
          height: 30,
        ),
        ContactWidget(
          image: 'assets/linkedin.svg',
          text: "LinkedIn",
          url: ContactTexts.urlLink,
          isMobile: true,
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              child: SvgPicture.asset('assets/local.svg'),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: 50,
              width: Utils.sizeQuery(context).width,
              child: SelectableText(
                'Brasília - Distrito Federal\nBrasil',
                style: TextStyle(
                    fontSize: 14,
                    color: ColorsApp.gray1,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
