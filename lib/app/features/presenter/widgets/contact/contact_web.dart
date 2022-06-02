import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text.dart';
import '../contact_widget/contact_widget.dart';

class ContactWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ContactWidget(
                image: 'assets/whats.svg',
                text: "(61) 99917-4230",
                url: DefaultTexts.urlPhone,
                isMobile: false,
              ),
              SizedBox(
                width: 10,
              ),
              ContactWidget(
                image: 'assets/arroba.svg',
                text: "renanctorres7@gmail.com",
                url: DefaultTexts.urlEmail,
                isMobile: false,
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              ContactWidget(
                image: 'assets/linkedin.svg',
                text: "LinkedIn",
                url: DefaultTexts.urlLink,
                isMobile: false,
              ),
              SizedBox(
                width: 10,
              ),
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
                width: 300,
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
