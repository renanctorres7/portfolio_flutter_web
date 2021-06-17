import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/app/modules/skills/widgets/slide_percent.dart';
import 'package:portfolio/app/shared/components/carousel_widget/web/carousel_web_store.dart';
import 'package:portfolio/app/shared/constants/colors.dart';
import 'package:portfolio/app/shared/constants/text.dart';
import 'package:portfolio/app/shared/constants/values.dart';

class SkillsCarouselWeb2 extends StatefulWidget {
  final int index;
  final PageController pageCrtl;

  const SkillsCarouselWeb2(
      {Key? key, required this.index, required this.pageCrtl})
      : super(key: key);

  @override
  _SkillsCarouselWeb2State createState() => _SkillsCarouselWeb2State();
}

class _SkillsCarouselWeb2State
    extends ModularState<SkillsCarouselWeb2, CarouselWebStore> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            width: size.width * 0.8,
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
                  padding: EdgeInsets.only(top: size.height * 0.08),
                  width: constraints.maxWidth > MOBILE_MAX
                      ? size.width * 0.68
                      : size.width * 0.9,
                  height: constraints.maxWidth > MOBILE_MAX
                      ? size.height * 0.55
                      : size.height * 0.7,
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SlidePercent(
                                width: size.width * 0.68,
                                height: size.height * 0.02,
                                text: 'HTML',
                                percent: 50,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SlidePercent(
                                width: size.width * 0.68,
                                height: size.height * 0.02,
                                text: 'HTML',
                                percent: 50,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SlidePercent(
                                width: size.width * 0.68,
                                height: size.height * 0.02,
                                text: 'HTML',
                                percent: 50,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SlidePercent(
                                width: size.width * 0.68,
                                height: size.height * 0.02,
                                text: 'HTML',
                                percent: 50,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SlidePercent(
                                width: size.width * 0.68,
                                height: size.height * 0.02,
                                text: 'HTML',
                                percent: 50,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SlidePercent(
                                width: size.width * 0.68,
                                height: size.height * 0.02,
                                text: 'HTML',
                                percent: 50,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SlidePercent(
                                width: size.width * 0.68,
                                height: size.height * 0.02,
                                text: 'HTML',
                                percent: 50,
                              ),
                            ],
                          )
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
    });
  }
}
