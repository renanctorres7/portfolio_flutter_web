import 'package:flutter/cupertino.dart';

import '../../../../core/utils/utils.dart';
import '../widgets.dart';

class SkillsGeneralItem extends StatelessWidget {
  const SkillsGeneralItem({Key? key, required this.isWeb}) : super(key: key);

  final bool isWeb;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Utils.sizeQuery(context).width,
      padding: const EdgeInsets.only(top: 30),
      child: isWeb == true
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SkillsCardItem(
                  svgAsset: 'assets/mobile.svg',
                  title: 'Desenvolvimento Mobile',
                  text: 'Flutter (Dart)',
                  isWeb: isWeb,
                ),
                const SizedBox(
                  width: 50,
                ),
                SkillsCardItem(
                    title: 'UI/UX Design',
                    text: 'Figma',
                    isWeb: isWeb,
                    svgAsset: ''),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: SkillsCardItem(
                    svgAsset: 'assets/mobile.svg',
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
