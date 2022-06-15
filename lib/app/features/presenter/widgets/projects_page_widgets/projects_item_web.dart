import 'package:auto_size_text/auto_size_text.dart';

import 'package:flutter/material.dart';
import 'package:portfolio/app/features/presenter/widgets/projects_page_widgets/projects.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/utils.dart';
import '../widgets.dart';

class ProjectsItemWeb extends StatelessWidget {
  const ProjectsItemWeb(
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
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Flex(
            direction: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: AutoSizeText(
                        title,
                        style: const TextStyle(
                            fontSize: 23,
                            color: ColorsApp.gray1,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: AutoSizeText(text,
                          style: const TextStyle(
                              fontSize: 16,
                              color: ColorsApp.graphite,
                              fontWeight: FontWeight.w400)),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.only(top: 30),
                      width: Utils.sizeQuery(context).width * 0.4,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconUrlButton(
                              url: urlAndroid, asset: 'assets/android.svg'),
                          IconUrlButton(url: urlIOS, asset: 'assets/apple.svg'),
                          IconUrlButton(url: urlWeb, asset: 'assets/web.svg'),
                          ProjectsIconArrowButton(
                              pageController: pageCrtl,
                              lastIndex: lastIndex,
                              index: index)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Flexible(
                  child: ProjectsImage(
                image: image,
                isWeb: false,
              )),
            ],
          ),
        ],
      ),
    );
  }
}
