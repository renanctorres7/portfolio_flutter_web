import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/utils.dart';
import '../../../infra/models/skills_model.dart';
import '../widgets.dart';

Widget skillsListMobile(
    {required BuildContext context, required List<SkillsModel>? skillsList}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        padding: EdgeInsets.only(top: 20),
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
            physics: ClampingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: SlidePercent(
                    width: Utils.sizeQuery(context).width * 0.68,
                    height: Utils.sizeQuery(context).height * 0.02,
                    text: skillsList?[index].title ?? "",
                    percent: skillsList?[index].percent?.toDouble() ?? 50),
              );
            },
          ),
        ),
      ),
      // Container(
      //   height: 50,
      //   width: Utils.sizeQuery(context).width,
      //   alignment: Alignment.bottomRight,
      //   child: IconButton(
      //       padding: EdgeInsets.zero,
      //       onPressed: () {
      //         pageController?.previousPage(
      //             duration: Duration(seconds: 1), curve: Curves.easeIn);
      //       },
      //       icon: Icon(
      //         Icons.arrow_back_ios_new,
      //         size: 50,
      //         color: ColorsApp.gray,
      //       )),
      // )
    ],
  );
}
