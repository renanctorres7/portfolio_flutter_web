import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/shared/components/carousel_widget/web/carousel_web_store.dart';
import 'package:portfolio/app/shared/constants/colors.dart';
import 'package:portfolio/app/shared/constants/text.dart';

class ComponentCarouselWeb extends StatefulWidget {
  final int index;
  final PageController pageCrtl;

  const ComponentCarouselWeb(
      {Key? key, required this.index, required this.pageCrtl})
      : super(key: key);

  @override
  _ComponentCarouselWebState createState() => _ComponentCarouselWebState();
}

class _ComponentCarouselWebState
    extends ModularState<ComponentCarouselWeb, CarouselWebStore> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 400,
                child: Text(
                  'Projetos',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 26,
                      color: graphite,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                width: 400,
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Desenvolvedor Front-End',
                  style: TextStyle(
                      fontSize: 23, color: gray4, fontWeight: FontWeight.w600),
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
                          child: Image.asset('android.png'),
                        )),
                    Container(
                      child: IconButton(
                          onPressed: () {
                            controller.animateSlider(
                                widget.index, widget.pageCrtl);
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 50,
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            width: 200,
            child: Image.asset(
              'cel1.png',
              fit: BoxFit.fitHeight,
            ),
          )
        ],
      ),
    );
  }
}
