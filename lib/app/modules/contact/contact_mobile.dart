import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/app/modules/contact/widget/contact_page_widget.dart';
import 'package:portfolio/app/modules/contact/widget/contact_page_widget1.dart';
import 'package:portfolio/app/shared/constants/colors.dart';
import 'package:portfolio/app/shared/constants/text.dart';

class ContactMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: Column(
        children: [
          ContactPageWidget1(
            image: 'whats.svg',
            text: "(61) 99917-4230",
            url: urlPhone,
          ),
          SizedBox(
            height: 30,
          ),
          ContactPageWidget1(
            image: 'arroba.svg',
            text: "renanctorres7@gmail.com",
            url: urlEmail,
          ),
          SizedBox(
            height: 30,
          ),
          ContactPageWidget1(
            image: 'linkedin.svg',
            text: "LinkedIn",
            url: urlLink,
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                child: SvgPicture.asset('local.svg'),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 50,
                width: size.width * 0.5,
                child: SelectableText(
                  'Brasília - Distrito Federal\nBrasil',
                  style: TextStyle(
                      fontSize: 14, color: gray1, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
