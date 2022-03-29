import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/app/shared/constants/colors.dart';

import '../../../utils/utils.dart';

class CarouselWeb extends StatelessWidget {
  final int index;
  final PageController pageCrtl;
  final String title;
  final String text;
  final String image;
  final bool hasAndroid;
  final bool hasApple;
  final bool hasWeb;
  final String url;
  final String urlIOS;
  final String? urlWeb;

  const CarouselWeb(
      {Key? key,
      required this.index,
      required this.pageCrtl,
      required this.title,
      required this.text,
      required this.image,
      required this.hasAndroid,
      required this.hasApple,
      required this.url,
      required this.hasWeb,
      this.urlWeb,
      required this.urlIOS})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 500, minWidth: 350),
                  child: Container(
                    width: size.width * 0.5,
                    child: AutoSizeText(
                      'Projetos',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 26,
                          color: ColorsApp.graphite,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 500, minWidth: 350),
                  child: Container(
                    width: size.width * 0.5,
                    padding: const EdgeInsets.only(top: 10),
                    child: AutoSizeText(
                      title,
                      style: TextStyle(
                          fontSize: 23,
                          color: ColorsApp.gray1,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 500, minWidth: 350),
                  child: Container(
                    width: size.width * 0.5,
                    padding: const EdgeInsets.only(top: 10),
                    child: AutoSizeText(text,
                        style: TextStyle(
                            fontSize: 16,
                            color: ColorsApp.graphite,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 500, minWidth: 330),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.only(top: 30),
                    width: size.width * 0.4,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        hasAndroid == true
                            ? TextButton(
                                onPressed: () {
                                  Utils.launchURL(url);
                                },
                                child: Container(
                                  height: 50,
                                  child: SvgPicture.asset('assets/android.svg'),
                                ))
                            : Container(
                                height: 50,
                              ),
                        hasApple == true
                            ? TextButton(
                                onPressed: () {
                                  Utils.launchURL(urlIOS);
                                },
                                child: Container(
                                  height: 50,
                                  child: SvgPicture.asset('assets/apple.svg'),
                                ))
                            : Container(
                                height: 50,
                              ),
                        hasWeb == true
                            ? TextButton(
                                onPressed: () {
                                  Utils.launchURL(urlWeb!);
                                },
                                child: Container(
                                  height: 50,
                                  child: SvgPicture.asset('assets/web.svg'),
                                ))
                            : Container(
                                height: 50,
                              ),
                        Container(
                          child: IconButton(
                              onPressed: () {
                                Utils.animateSlider(index, pageCrtl);
                              },
                              icon: index != 0
                                  ? Icon(
                                      Icons.arrow_forward_ios,
                                      size: 50,
                                      color: ColorsApp.gray1,
                                    )
                                  : Icon(
                                      Icons.arrow_back_ios_new,
                                      size: 50,
                                      color: ColorsApp.gray1,
                                    )),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 200, minWidth: 150),
              child: Container(
                width: 200,
                child: Image.network(
                  image,
                  fit: BoxFit.fitHeight,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
