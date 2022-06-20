import 'package:flutter/material.dart';
import 'package:portfolio/app/core/extensions/context.dart';

import '../../../../core/configs/configs.dart';
import '../widgets.dart';

class ContactPageMobile extends StatelessWidget {
  const ContactPageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenSize.width,
      child: Column(
        children: const [
          CustomTitle(title: 'Contato', textIsWhite: false),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: ContactItemList(
              image: AppImages.whats,
              text: ContactTexts.phoneNumber,
              url: ContactTexts.urlPhone,
              isWeb: false,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: ContactItemList(
              image: AppImages.mailSign,
              text: ContactTexts.urlEmail,
              url: ContactTexts.urlEmail,
              isWeb: false,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: ContactItemList(
              image: AppImages.linkedin,
              text: "LinkedIn",
              url: ContactTexts.urlLink,
              isWeb: false,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: ContactItemList(
                image: AppImages.local,
                text: ContactTexts.address,
                url: '',
                isWeb: false),
          )
        ],
      ),
    );
  }
}
