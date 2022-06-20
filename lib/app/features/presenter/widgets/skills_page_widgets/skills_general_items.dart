import 'package:flutter/cupertino.dart';
import '../../../../core/configs/configs.dart';
import 'package:portfolio/app/core/extensions/context.dart';

import '../widgets.dart';

class SkillsGeneralItem extends StatelessWidget {
  const SkillsGeneralItem({Key? key, required this.isWeb}) : super(key: key);

  final bool isWeb;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenSize.width,
      padding: const EdgeInsets.only(top: 30),
      child: isWeb == true
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SkillsCardItem(
                  svgAsset: AppImages.mobile,
                  title: 'Desenvolvimento Mobile',
                  text: 'Flutter (Dart)',
                  isWeb: isWeb,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: SkillsCardItem(
                      title: 'UI/UX Design',
                      text: 'Figma',
                      isWeb: isWeb,
                      svgAsset: ''),
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: SkillsCardItem(
                    svgAsset: AppImages.mobile,
                    title: 'Desenvolvimento Mobile',
                    text: 'Flutter (Dart)',
                    isWeb: isWeb,
                  ),
                ),
                SkillsCardItem(
                    title: 'UI/UX Design',
                    text: 'Figma',
                    isWeb: isWeb,
                    svgAsset: ''),
              ],
            ),
    );
  }
}
