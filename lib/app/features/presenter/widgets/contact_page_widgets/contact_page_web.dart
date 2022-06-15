import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/features/presenter/widgets/contact_page_widgets/contact_item_list.dart';

import '../../../../core/constants/theme/colors_app.dart';
import '../../../../core/constants/texts/contact_texts.dart';

class ContactPageWeb extends StatelessWidget {
  const ContactPageWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        Container(
          width: 900,
          alignment: Alignment.centerLeft,
          child: const AutoSizeText(
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
          children: const [
            Flexible(
              child: ContactItemList(
                image: 'assets/whats.svg',
                text: "(61) 99917-4230",
                url: ContactTexts.urlPhone,
                isWeb: true,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: ContactItemList(
                image: 'assets/arroba.svg',
                text: "renanctorres7@gmail.com",
                url: ContactTexts.urlEmail,
                isWeb: true,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Flex(
          direction: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Flexible(
              child: ContactItemList(
                image: 'assets/linkedin.svg',
                text: "LinkedIn",
                url: ContactTexts.urlLink,
                isWeb: true,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: ContactItemList(
                image: 'assets/local.svg',
                text: 'Brasília - Distrito Federal\nBrasil',
                url: "",
                isWeb: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
