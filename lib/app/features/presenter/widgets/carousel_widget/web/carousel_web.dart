import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/utils/utils.dart';

class CarouselWeb extends StatelessWidget {
  final int index;
  final PageController pageCrtl;
  final String title;
  final String text;
  final String image;

  final String urlAndroid;
  final String urlIOS;
  final String urlWeb;

  const CarouselWeb(
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
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return SizedBox(
                      width: size.width,
                      height: size.height,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          width: 200,
                          child: LinearProgressIndicator(
                            color: ColorsApp.purple,
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}