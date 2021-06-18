import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/app/modules/contact/widget/contact_page_widget.dart';
import 'package:portfolio/app/shared/constants/colors.dart';

class ContactWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.68,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ContactPageWidget(
                image: 'whats.svg',
                text: "(61) 99917-4230",
                url: '',
              ),
              SizedBox(
                width: 50,
              ),
              ContactPageWidget(
                image: 'arroba.svg',
                text: "renanctorres7@gmail.com",
                url: '',
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              ContactPageWidget(
                image: 'linkedin.svg',
                text: "LinkedIn",
                url: '',
              ),
              SizedBox(
                width: 50,
              ),
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