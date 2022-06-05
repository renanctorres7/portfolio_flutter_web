import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/texts/contact_texts.dart';
import '../../../../core/utils/utils.dart';
import '../contact_widget/contact_widget.dart';

class ContactMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 60),
      width: Utils.sizeQuery(context).width * 0.8,
      child: Column(
        children: [
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
                width: Utils.sizeQuery(context).width * 0.5,
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
}
