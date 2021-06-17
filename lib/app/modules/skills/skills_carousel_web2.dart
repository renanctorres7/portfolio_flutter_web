import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/app/modules/skills/widgets/slide_percent.dart';
import 'package:portfolio/app/shared/components/carousel_widget/web/carousel_web_store.dart';
import 'package:portfolio/app/shared/constants/colors.dart';
import 'package:portfolio/app/shared/constants/text.dart';

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
    return Container(
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          width: size.width * 0.8,
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
              ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: size.height * 0.08),
                    width: size.width * 0.68,
                    height: size.height * 0.35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            SlidePercent(
                              width: size.width * 0.68,
                              height: size.height * 0.02,
                              text: 'HTML',
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
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
