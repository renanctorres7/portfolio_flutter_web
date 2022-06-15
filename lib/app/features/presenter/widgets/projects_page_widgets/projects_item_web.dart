import 'package:auto_size_text/auto_size_text.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/app/features/presenter/widgets/projects_page_widgets/projects.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/utils.dart';

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
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: Utils.sizeQuery(context).width * 0.5,
                  padding: const EdgeInsets.only(top: 10),
                  child: AutoSizeText(
                    title,
                    style: const TextStyle(
                        fontSize: 23,
                        color: ColorsApp.gray1,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                ConstrainedBox(
                  constraints:
                      const BoxConstraints(maxWidth: 500, minWidth: 350),
                  child: Container(
                    width: Utils.sizeQuery(context).width * 0.5,
                    padding: const EdgeInsets.only(top: 10),
                    child: AutoSizeText(text,
                        style: const TextStyle(
                            fontSize: 16,
                            color: ColorsApp.graphite,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                ConstrainedBox(
                  constraints:
                      const BoxConstraints(maxWidth: 500, minWidth: 330),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.only(top: 30),
                    width: Utils.sizeQuery(context).width * 0.4,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        urlAndroid.isNotEmpty
                            ? TextButton(
                                onPressed: () {
                                  Utils.launchURL(urlAndroid);
                                },
                                child: SizedBox(
                                  height: 50,
                                  child: SvgPicture.asset('assets/android.svg'),
                                ))
                            : Container(
                                height: 50,
                              ),
                        urlIOS.isNotEmpty
                            ? TextButton(
                                onPressed: () {
                                  Utils.launchURL(urlIOS);
                                },
                                child: SizedBox(
                                  height: 50,
                                  child: SvgPicture.asset('assets/apple.svg'),
                                ))
                            : Container(
                                height: 50,
                              ),
                        urlWeb.isNotEmpty
                            ? TextButton(
                                onPressed: () {
                                  Utils.launchURL(urlWeb);
                                },
                                child: SizedBox(
                                  height: 50,
                                  child: SvgPicture.asset('assets/web.svg'),
                                ))
                            : Container(
                                height: 50,
                              ),
                        IconButton(
                            iconSize: 50,
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              Utils.animateSlider(lastIndex, pageCrtl);
                            },
                            icon: index != lastIndex
                                ? const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 50,
                                    color: ColorsApp.gray1,
                                  )
                                : const Icon(
                                    Icons.arrow_back_ios_new,
                                    size: 50,
                                    color: ColorsApp.gray1,
                                  ))
                      ],
                    ),
                  ),
                )
              ],
            ),
            ProjectsImage(image: image),
          ],
        ),
      ],
    );
  }
}
