import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/utils.dart';
import '../../../infra/models/skills_model.dart';
import '../widgets.dart';

class SkillsListWeb extends StatelessWidget {
  const SkillsListWeb({Key? key, this.skillsList}) : super(key: key);

  final List<SkillsModel>? skillsList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, right: 50, bottom: 50),
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
                  isWeb: true,
                  width: Utils.sizeQuery(context).width * 0.68,
                  height: Utils.sizeQuery(context).height * 0.02,
                  text: skillsList?[index].title ?? "",
                  percent: skillsList?[index].percent?.toDouble() ?? 50),
            );
          },
        ),
      ),
    );
  }
}
