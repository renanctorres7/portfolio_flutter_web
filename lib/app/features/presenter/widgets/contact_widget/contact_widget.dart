import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/utils/utils.dart';

class ContactWidget extends StatelessWidget {
  final String image;
  final String text;
  final String url;
  final bool isMobile;

  const ContactWidget(
      {Key? key,
      required this.image,
      required this.text,
      required this.url,
      required this.isMobile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        TextButton(
          onPressed: () => Utils.launchURL(url),
          child: Container(
            height: 50,
            width: 50,
            child: SvgPicture.asset(image),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 50,
          width: isMobile == false ? 150 : size.width * 0.5,
          child: SelectableText(
            text,
            maxLines: 2,
            style: TextStyle(
              fontSize: 14,
              color: ColorsApp.graphite,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
