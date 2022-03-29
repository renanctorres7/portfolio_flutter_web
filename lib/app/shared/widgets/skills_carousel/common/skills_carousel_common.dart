import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:portfolio/app/shared/constants/colors.dart';

class SkillsCarouselCommon extends StatelessWidget {
  final int index;
  final PageController pageCrtl;

  const SkillsCarouselCommon(
      {Key? key, required this.index, required this.pageCrtl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          width: size.width,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 800, minWidth: 350),
                child: Container(
                  width: 800,
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText(
                    'Habilidades',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 26,
                        color: ColorsApp.white,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 800, minWidth: 350),
                child: Container(
                  padding: EdgeInsets.only(top: size.height * 0.03),
                  width: size.width * 0.8,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            child: Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Container(
                                width: 50,
                                alignment: Alignment.center,
                                child: SvgPicture.asset(
                                  'assets/mobile.svg',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 150,
                            padding: EdgeInsets.only(top: 20),
                            child: AutoSizeText(
                              'Desenvolvimento Mobile',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: ColorsApp.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            width: 150,
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(top: 20),
                            child: AutoSizeText(
                              'Flutter (Dart)',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'roboto',
                                  color: ColorsApp.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            child: Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Container(
                                width: 50,
                                alignment: Alignment.center,
                                child: SvgPicture.asset(
                                  'assets/pc.svg',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 150,
                            padding: EdgeInsets.only(top: 20),
                            child: AutoSizeText(
                              'Desenvolvimento Web (básico)',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: ColorsApp.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            width: 150,
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(top: 20),
                            child: AutoSizeText(
                              'HTML, CSS, BootStrap, Javascript \n\nFlutter Web',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'roboto',
                                  color: ColorsApp.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            child: Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Container(
                                  width: 50,
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.design_services_rounded,
                                    size: 50,
                                    color: ColorsApp.gray3,
                                  )),
                            ),
                          ),
                          Container(
                            width: 150,
                            padding: EdgeInsets.only(top: 20),
                            child: AutoSizeText(
                              'UI/UX Design',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: ColorsApp.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            width: 150,
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(top: 20),
                            child: AutoSizeText(
                              'Figma',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'roboto',
                                  color: ColorsApp.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: size.width * 0.7,
                alignment: Alignment.bottomRight,
                child: IconButton(
                    onPressed: () {
                      // controller.animateSlider(index, pageCrtl);
                    },
                    icon: index != 0
                        ? Icon(
                            Icons.arrow_forward_ios,
                            size: 50,
                            color: ColorsApp.gray,
                          )
                        : Icon(
                            Icons.arrow_back_ios_new,
                            size: 50,
                            color: ColorsApp.gray,
                          )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
