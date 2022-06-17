import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/app/core/extensions/context.dart';

import '../../../../core/utils/utils_functions.dart';

class ContactItemList extends StatelessWidget {
  const ContactItemList(
      {Key? key,
      required this.image,
      required this.text,
      required this.url,
      required this.isWeb})
      : super(key: key);

  final String image;
  final String text;
  final String url;
  final bool isWeb;

  @override
  Widget build(BuildContext context) {
    return url.isNotEmpty
        ? TextButton(
            onPressed: () => Utils.launchURL(url),
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
                Flexible(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.only(top: 10, left: 15),
                    alignment: Alignment.centerLeft,
                    child: SelectableText(
                      text,
                      maxLines: 2,
                      style: context.appTextTheme.headline5,
                    ),
                  ),
                ),
              ],
            ),
          )
        : Flex(
            direction: Axis.horizontal,
            children: [
              Flexible(
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: SvgPicture.asset(image),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.only(top: 10, left: 15),
                  alignment: Alignment.centerLeft,
                  child: SelectableText(
                    text,
                    maxLines: 2,
                    style: context.appTextTheme.headline5,
                  ),
                ),
              ),
            ],
          );
  }
}
