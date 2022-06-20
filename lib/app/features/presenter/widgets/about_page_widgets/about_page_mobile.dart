import 'package:flutter/material.dart';
import 'package:portfolio/app/core/extensions/context.dart';

import '../../../../core/configs/configs.dart';
import '../widgets.dart';

class AboutPageMobile extends StatelessWidget {
  const AboutPageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenSize.height,
      width: context.screenSize.width,
      child: Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Flexible(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(top: 100, bottom: 50),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  AppImages.profile,
                ),
                radius: 100,
              ),
            ),
          ),
          Flexible(flex: 2, child: AboutList(isWeb: false)),
          Flexible(flex: 2, child: CustomButton()),
        ],
      ),
    );
  }
}
