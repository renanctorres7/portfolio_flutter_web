import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/texts/contact_texts.dart';
import '../contact_widget/contact_widget.dart';

Widget contactPageWeb() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50),
    width: 900,
    child: Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          width: 900,
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
        Container(
          height: 30,
        ),
        Flex(
          direction: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: ContactWidget(
                image: 'assets/whats.svg',
                text: "(61) 99917-4230",
                url: ContactTexts.urlPhone,
                isMobile: false,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: ContactWidget(
                image: 'assets/arroba.svg',
                text: "renanctorres7@gmail.com",
                url: ContactTexts.urlEmail,
                isMobile: false,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Flex(
          direction: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: ContactWidget(
                image: 'assets/linkedin.svg',
                text: "LinkedIn",
                url: ContactTexts.urlLink,
                isMobile: false,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Flexible(
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: SvgPicture.asset('assets/local.svg'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: SelectableText(
                        'Brasília - Distrito Federal\nBrasil',
                        style: TextStyle(
                            fontSize: 14,
                            color: ColorsApp.gray1,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
