import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/app/shared/components/carousel_widget/web/carousel_web_store.dart';
import 'package:portfolio/app/shared/constants/colors.dart';
import 'package:portfolio/app/shared/constants/values.dart';

class SkillsCarouselMobile extends StatefulWidget {
  final int index;
  final PageController pageCrtl;

  const SkillsCarouselMobile(
      {Key? key, required this.index, required this.pageCrtl})
      : super(key: key);

  @override
  _SkillsCarouselMobileState createState() => _SkillsCarouselMobileState();
}

class _SkillsCarouselMobileState
    extends ModularState<SkillsCarouselMobile, CarouselWebStore> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        width: constraints.maxWidth > MOBILE_MAX ? 500 : size.width * 0.9,
        height: size.height * 0.9,
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            padding: constraints.maxWidth > MOBILE_MAX
                ? EdgeInsets.only(left: 0)
                : EdgeInsets.only(left: 20),
            alignment: constraints.maxWidth > MOBILE_MAX
                ? Alignment.center
                : Alignment.topLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: size.width * 0.68,
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText(
                    'Habilidades',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 26,
                        color: white,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: size.height * 0.01),
                  width: size.width * 0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Column(
                            children: [
                              Container(
                                width: 150,
                                padding: EdgeInsets.only(top: 20),
                                child: AutoSizeText(
                                  'Desenvolvimento Mobile',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: white,
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
                                      color: white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Column(
                            children: [
                              Container(
                                width: 150,
                                padding: EdgeInsets.only(top: 20),
                                child: AutoSizeText(
                                  'Desenvolvimento Web (básico)',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: white,
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
                                      color: white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    color: gray3,
                                  )),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                width: 150,
                                padding: EdgeInsets.only(top: 20),
                                child: AutoSizeText(
                                  'UI/UX Design',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: white,
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
                                      color: white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: constraints.maxWidth > MOBILE_MAX
                      ? size.width * 0.7
                      : size.width * 0.85,
                  padding: constraints.maxWidth > MOBILE_MAX
                      ? EdgeInsets.only(top: size.height * 0.02)
                      : EdgeInsets.only(top: size.height * 0.01),
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                      onPressed: () {
                        controller.animateSlider(widget.index, widget.pageCrtl);
                      },
                      icon: widget.index != 0
                          ? Icon(
                              Icons.arrow_forward_ios,
                              size: 50,
                              color: gray,
                            )
                          : Icon(
                              Icons.arrow_back_ios_new,
                              size: 50,
                              color: gray,
                            )),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
