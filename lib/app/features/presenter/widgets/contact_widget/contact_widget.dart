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
    return TextButton(
      onPressed: () => Utils.launchURL(url),
      style: ButtonStyle(
        shape: MaterialStateProperty.resolveWith((states) =>
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.hovered)) {
            return Colors.purple;
          } else {
            return ColorsApp.gray3;
          }
        }),
        textStyle: MaterialStateProperty.resolveWith((states) => TextStyle(
            fontSize: 16,
            fontFamily: "quicksand",
            fontWeight: FontWeight.w600,
            color: ColorsApp.gray3)),
      ),
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Flexible(
            child: SizedBox(
              height: 50,
              width: 50,
              child: SvgPicture.asset(image),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            flex: 2,
            child: Container(
              alignment: Alignment.centerLeft,
              child: SelectableText(
                text,
                maxLines: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
