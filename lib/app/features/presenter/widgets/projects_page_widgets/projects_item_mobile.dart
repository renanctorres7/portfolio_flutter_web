import 'package:auto_size_text/auto_size_text.dart';

import 'package:flutter/material.dart';
import 'package:portfolio/app/features/presenter/widgets/projects_page_widgets/projects.dart';

import '../../../../core/constants/constants.dart';
import '../widgets.dart';

class ProjectsItemMobile extends StatelessWidget {
  const ProjectsItemMobile(
      {Key? key,
      required this.index,
      required this.lastIndex,
      required this.pageCrtl,
      required this.title,
      required this.text,
      required this.image,
      required this.urlAndroid,
      required this.urlIOS,
      required this.urlWeb})
      : super(key: key);

  final int index;
  final int lastIndex;
  final PageController pageCrtl;
  final String title;
  final String text;
  final String image;
  final String urlAndroid;
  final String urlIOS;
  final String urlWeb;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: ProjectsImage(
              image: image,
              isWeb: false,
            ),
          ),
          Flexible(
            child: Container(
              padding: const EdgeInsets.only(top: 20),
              child: AutoSizeText(
                title,
                style: const TextStyle(
                    fontSize: 24,
                    color: ColorsApp.gray1,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.only(top: 10),
              child: AutoSizeText(text,
                  style: const TextStyle(
                      fontSize: 16,
                      color: ColorsApp.graphite,
                      fontWeight: FontWeight.w400)),
            ),
          ),
          Flexible(
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(top: 30),
              child: Flex(
                direction: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconUrlButton(url: urlAndroid, asset: AppImages.android),
                  IconUrlButton(url: urlIOS, asset: AppImages.apple),
                  IconUrlButton(url: urlWeb, asset: AppImages.web),
                  ProjectsIconArrowButton(
                      pageController: pageCrtl,
                      lastIndex: lastIndex,
                      index: index)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
