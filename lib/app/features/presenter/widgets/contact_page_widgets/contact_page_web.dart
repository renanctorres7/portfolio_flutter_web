import 'package:flutter/material.dart';
import 'package:portfolio/app/features/presenter/widgets/contact_page_widgets/contact_item_list.dart';
import 'package:portfolio/app/features/presenter/widgets/custom_title/custom_title.dart';

import '../../../../core/configs/configs.dart';

class ContactPageWeb extends StatelessWidget {
  const ContactPageWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTitle(title: 'Contato', textIsWhite: false),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Flex(
            direction: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Flexible(
                child: ContactItemList(
                  image: AppImages.whats,
                  text: ContactTexts.phoneNumber,
                  url: ContactTexts.urlPhone,
                  isWeb: true,
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: ContactItemList(
                    image: AppImages.mailSign,
                    text: ContactTexts.urlEmail,
                    url: ContactTexts.urlEmail,
                    isWeb: true,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Flex(
            direction: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Flexible(
                child: ContactItemList(
                  image: AppImages.linkedin,
                  text: "LinkedIn",
                  url: ContactTexts.urlLink,
                  isWeb: true,
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: ContactItemList(
                      image: AppImages.local,
                      text: ContactTexts.address,
                      url: '',
                      isWeb: true),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
