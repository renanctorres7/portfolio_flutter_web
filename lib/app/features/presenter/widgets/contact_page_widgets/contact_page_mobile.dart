import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/features/presenter/widgets/contact_page_widgets/item_list.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/texts/contact_texts.dart';
import '../../../../core/utils/utils.dart';

Widget contactPageMobile(BuildContext context) {
  return Container(
    width: Utils.sizeQuery(context).width,
    child: Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Container(
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
        itemList(
          image: 'assets/whats.svg',
          text: "(61) 99917-4230",
          url: ContactTexts.urlPhone,
          isWeb: false,
        ),
        SizedBox(
          height: 30,
        ),
        itemList(
          image: 'assets/arroba.svg',
          text: "renanctorres7@gmail.com",
          url: ContactTexts.urlEmail,
          isWeb: false,
        ),
        SizedBox(
          height: 30,
        ),
        itemList(
          image: 'assets/linkedin.svg',
          text: "LinkedIn",
          url: ContactTexts.urlLink,
          isWeb: false,
        ),
        SizedBox(
          height: 30,
        ),
        itemList(
            image: 'assets/local.svg',
            text: 'Brasília - Distrito Federal\nBrasil',
            url: '',
            isWeb: false)
      ],
    ),
  );
}
