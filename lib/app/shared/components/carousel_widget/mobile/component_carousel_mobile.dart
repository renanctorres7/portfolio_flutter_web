import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/shared/components/carousel_widget/web/carousel_web_store.dart';
import 'package:portfolio/app/shared/constants/colors.dart';
import 'package:portfolio/app/shared/constants/text.dart';

class ComponentCarouselMobile extends StatefulWidget {
  final int index;
  final PageController pageCrtl;

  const ComponentCarouselMobile(
      {Key? key, required this.index, required this.pageCrtl})
      : super(key: key);

  @override
  _ComponentCarouselMobileState createState() =>
      _ComponentCarouselMobileState();
}

class _ComponentCarouselMobileState
    extends ModularState<ComponentCarouselMobile, CarouselWebStore> {
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
                'cel1.png',
                fit: BoxFit.fitHeight,
              ),
            ),
            Container(
              width: 400,
              child: Text(
                'Projetos',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 26, color: graphite, fontWeight: FontWeight.w800),
              ),
            ),
            Container(
              width: 400,
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Desenvolvedor Front-End',
                style: TextStyle(
                    fontSize: 23, color: gray1, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              width: 400,
              padding: const EdgeInsets.only(top: 10),
              child: Text(sobre,
                  style: TextStyle(
                      fontSize: 16,
                      color: graphite,
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
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        child: Image.asset('android.png'),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        child: Image.asset('apple.png'),
                      )),
                  Container(
                    child: IconButton(
                        onPressed: () {
                          controller.animateSlider(
                              widget.index, widget.pageCrtl);
                        },
                        icon: widget.index != 0
                            ? Icon(
                                Icons.arrow_forward_ios,
                                size: 50,
                                color: gray1,
                              )
                            : Icon(
                                Icons.arrow_back_ios_new,
                                size: 50,
                                color: gray1,
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
