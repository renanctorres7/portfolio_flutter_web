import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/app/modules/contact/widget/contact_page_widget.dart';
import 'package:portfolio/app/shared/constants/colors.dart';

class ContactMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Column(
        children: [
          ContactPageWidget(
            image: 'whats.svg',
            text: "(61) 99917-4230",
            url: '',
          ),
          ContactPageWidget(
            image: 'arroba.svg',
            text: "renanctorres7@gmail.com",
            url: '',
          ),
          ContactPageWidget(
            image: 'linkedin.svg',
            text: "LinkedIn",
            url: '',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                child: SvgPicture.asset('local.svg'),
              ),
              Container(
                child: SelectableText(
                  'Brasília - Distrito Federal\nBrasil',
                  style: TextStyle(
                      fontSize: 16, color: gray1, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
