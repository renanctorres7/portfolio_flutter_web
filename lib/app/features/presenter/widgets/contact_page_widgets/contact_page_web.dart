import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/features/presenter/widgets/contact_page_widgets/contact_item_list.dart';

import '../../../../core/configs/configs.dart';

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
                image: AppImages.whats,
                text: ContactTexts.phoneNumber,
                url: ContactTexts.urlPhone,
                isWeb: false,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: ContactItemList(
                image: AppImages.mailSign,
                text: ContactTexts.urlEmail,
                url: ContactTexts.urlEmail,
                isWeb: false,
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
                image: AppImages.linkedin,
                text: "LinkedIn",
                url: ContactTexts.urlLink,
                isWeb: false,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: ContactItemList(
                  image: AppImages.local,
                  text: ContactTexts.address,
                  url: '',
                  isWeb: false),
            ),
          ],
        ),
      ],
    );
  }
}
