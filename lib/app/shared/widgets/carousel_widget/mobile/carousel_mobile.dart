import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/app/shared/constants/colors.dart';
import 'package:portfolio/app/shared/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class CarouselMobile extends StatelessWidget {
  final int index;
  final PageController pageCrtl;
  final String title;
  final String text;
  final String image;
  final bool hasAndroid;
  final bool hasApple;
  final String url;
  final String urlIOS;
  final bool hasWeb;
  final String? urlWeb;

  const CarouselMobile(
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
    // final size = MediaQuery.of(context).size;
    return Container(
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 150,
              child: Image.asset(
                image,
                fit: BoxFit.fitHeight,
              ),
            ),
            Container(
              width: 400,
              child: Text(
                'Projetos',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 26,
                    color: ColorsApp.graphite,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Container(
              width: 400,
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 23,
                    color: ColorsApp.gray1,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              width: 400,
              padding: const EdgeInsets.only(top: 10),
              child: Text(text,
                  style: TextStyle(
                      fontSize: 16,
                      color: ColorsApp.graphite,
                      fontWeight: FontWeight.w400)),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(top: 30),
              width: 400,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  hasAndroid == true
                      ? TextButton(
                          onPressed: () {
                            Utils.launchURLandroid(url);
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
                            Utils.launchURLios(urlIOS);
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
                            Utils.launchURLios(urlWeb!);
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
            )
          ],
        ),
      ),
    );
  }
}