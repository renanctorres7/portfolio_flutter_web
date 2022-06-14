import 'package:flutter/cupertino.dart';

import '../../../../core/utils/utils.dart';
import '../widgets.dart';

Widget skillsGeneralItems(
    {required BuildContext context, required bool isWeb}) {
  return Container(
    width: Utils.sizeQuery(context).width,
    padding: EdgeInsets.only(top: 30),
    child: isWeb == true
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              skillsCard(
                svgAsset: 'assets/mobile.svg',
                title: 'Desenvolvimento Mobile',
                text: 'Flutter (Dart)',
                isWeb: isWeb,
              ),
              SizedBox(
                width: 50,
              ),
              skillsCard(
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
                child: skillsCard(
                  svgAsset: 'assets/mobile.svg',
                  title: 'Desenvolvimento Mobile',
                  text: 'Flutter (Dart)',
                  isWeb: isWeb,
                ),
              ),
              skillsCard(
                  title: 'UI/UX Design',
                  text: 'Figma',
                  isWeb: isWeb,
                  svgAsset: ''),
            ],
          ),
  );
}
