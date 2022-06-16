import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:portfolio/app/features/presenter/widgets/contact_page_widgets/contact_item_list.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/utils_functions.dart';

class ContactPageMobile extends StatelessWidget {
  const ContactPageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Utils.sizeQuery(context).width,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            width: 900,
            alignment: Alignment.centerLeft,
            child: const AutoSizeText(
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
          const ContactItemList(
            image: AppImages.whats,
            text: ContactTexts.phoneNumber,
            url: ContactTexts.urlPhone,
            isWeb: false,
          ),
          const SizedBox(
            height: 30,
          ),
          const ContactItemList(
            image: AppImages.mailSign,
            text: ContactTexts.urlEmail,
            url: ContactTexts.urlEmail,
            isWeb: false,
          ),
          const SizedBox(
            height: 30,
          ),
          const ContactItemList(
            image: AppImages.linkedin,
            text: "LinkedIn",
            url: ContactTexts.urlLink,
            isWeb: false,
          ),
          const SizedBox(
            height: 30,
          ),
          const ContactItemList(
              image: AppImages.local,
              text: ContactTexts.address,
              url: '',
              isWeb: false)
        ],
      ),
    );
  }
}
