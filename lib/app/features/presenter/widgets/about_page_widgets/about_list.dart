import 'package:flutter/material.dart';
import 'package:portfolio/app/core/extensions/context.dart';

import '../../../../core/configs/configs.dart';

class AboutList extends StatelessWidget {
  const AboutList({Key? key, required this.isWeb}) : super(key: key);

  final bool isWeb;

  @override
  Widget build(BuildContext context) {
    return isWeb
        ? SizedBox(
            height: 500,
            width: 400,
            child: Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Text(
                    AboutTexts.name,
                    textAlign: TextAlign.left,
                    style: context.appTextTheme.headline1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    AboutTexts.profession,
                    style: context.appTextTheme.subtitle1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(AboutTexts.about,
                      style: context.appTextTheme.bodyText1),
                )
              ],
            ),
          )
        : SizedBox(
            height: 500,
            child: Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Flexible(
                  child: Text(
                    AboutTexts.name,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 24,
                        color: ColorsApp.white,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                const Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      AboutTexts.profession,
                      style: TextStyle(
                          fontSize: 18,
                          color: ColorsApp.gray4,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(AboutTexts.about,
                        style: context.appTextTheme.bodyText1),
                  ),
                ),
              ],
            ),
          );
  }
}
