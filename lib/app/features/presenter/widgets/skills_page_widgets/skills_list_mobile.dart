import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/core/extensions/context.dart';

import '../../../infra/models/skills_model.dart';
import '../widgets.dart';

class SkillsListMobile extends StatelessWidget {
  const SkillsListMobile({Key? key, required this.skillsList})
      : super(key: key);

  final List<SkillsModel>? skillsList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, bottom: 30, right: 50),
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
          },
        ),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: skillsList?.length,
          physics: const ClampingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: SlidePercent(
                  isWeb: false,
                  width: context.screenSize.width * 0.68,
                  height: context.screenSize.height * 0.02,
                  text: skillsList?[index].title ?? "",
                  percent: skillsList?[index].percent?.toDouble() ?? 50),
            );
          },
        ),
      ),
    );
  }
}
