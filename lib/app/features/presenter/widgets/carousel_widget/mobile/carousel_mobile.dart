import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/utils/utils.dart';

class CarouselMobile extends StatelessWidget {
  final int index;
  final PageController pageCrtl;
  final String title;
  final String text;
  final String image;

  final String urlAndroid;
  final String urlIOS;

  final String urlWeb;

  const CarouselMobile(
      {Key? key,
      required this.index,
      required this.pageCrtl,
      required this.title,
      required this.text,
      required this.image,
      required this.urlAndroid,
      required this.urlWeb,
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
                  urlAndroid.isNotEmpty
                      ? TextButton(
                          onPressed: () {
                            Utils.launchURL(urlAndroid);
                          },
                          child: Container(
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
                          child: Container(
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
