import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/app/shared/components/carousel_widget/web/carousel_web_store.dart';
import 'package:portfolio/app/shared/constants/colors.dart';

class SkillsCarouselWeb extends StatefulWidget {
  final int index;
  final PageController pageCrtl;

  const SkillsCarouselWeb(
      {Key? key, required this.index, required this.pageCrtl})
      : super(key: key);

  @override
  _SkillsCarouselWebState createState() => _SkillsCarouselWebState();
}

class _SkillsCarouselWebState
    extends ModularState<SkillsCarouselWeb, CarouselWebStore> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          width: 500,
          alignment: Alignment.center,
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
                      fontSize: 26, color: white, fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: size.height * 0.03),
                width: size.width * 0.7,
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
                                'mobile.svg',
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
                                'pc.svg',
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
                                  color: gray3,
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
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width * 0.7,
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
  }
}
