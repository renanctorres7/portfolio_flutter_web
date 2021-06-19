import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/shared/components/carousel_widget/mobile/component_carousel_mobile.dart';
import 'package:portfolio/app/shared/components/carousel_widget/web/carousel_web_store.dart';
import 'package:portfolio/app/shared/components/carousel_widget/web/component_carousel_web.dart';
import 'package:portfolio/app/shared/constants/text.dart';
import 'package:portfolio/app/shared/constants/values.dart';
import 'package:url_launcher/url_launcher.dart';

class CarouselWeb extends StatefulWidget {
  @override
  _CarouselWebState createState() => _CarouselWebState();
}

class _CarouselWebState extends ModularState<CarouselWeb, CarouselWebStore> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: constraints.maxWidth > MOBILE_MAX ? 100 : 50,
              ),
              Container(
                width: size.width,
                height: constraints.maxWidth > MOBILE_MAX
                    ? size.height * 0.6
                    : size.height * 0.8,
                child: constraints.maxWidth > MOBILE_MAX
                    ? PageView(
                        children: [
                          ComponentCarouselWeb(
                            index: 1,
                            pageCrtl: pageController,
                            title: 'Aplicativo - Receitas Fit',
                            text: receitas,
                            hasAndroid: true,
                            hasApple: true,
                            image: 'receitas.png',
                            url:
                                'https://play.google.com/store/apps/details?id=br.com.rctorres.receitas_fit',
                            urlIOS:
                                'https://apps.apple.com/br/app/receitas-fit/id1540754956',
                          ),
                          ComponentCarouselWeb(
                            index: 2,
                            pageCrtl: pageController,
                            title: 'Aplicativo - Jejum Intermitente',
                            text: jejum,
                            hasAndroid: true,
                            hasApple: true,
                            image: 'jejum.png',
                            url:
                                'https://play.google.com/store/apps/details?id=com.dieta.jejum_intermitente',
                            urlIOS:
                                'https://apps.apple.com/br/app/jejum-intermitente-f%C3%A1cil/id1533103508',
                          ),
                          ComponentCarouselWeb(
                            index: 0,
                            pageCrtl: pageController,
                            title: 'Aplicativo - Isa Estética',
                            text: isa,
                            hasAndroid: true,
                            hasApple: false,
                            image: 'isa.png',
                            url:
                                'https://play.google.com/store/apps/details?id=com.beleza.isa_estetica',
                            urlIOS: '',
                          ),
                        ],
                        controller: pageController,
                      )
                    : PageView(
                        children: [
                          ComponentCarouselMobile(
                            index: 1,
                            pageCrtl: pageController,
                            title: 'Aplicativo - Receitas Fit',
                            text: receitas,
                            hasAndroid: true,
                            hasApple: true,
                            image: 'receitas.png',
                            url:
                                'https://play.google.com/store/apps/details?id=br.com.rctorres.receitas_fit',
                            urlIOS:
                                'https://apps.apple.com/br/app/receitas-fit/id1540754956',
                          ),
                          ComponentCarouselMobile(
                            index: 2,
                            pageCrtl: pageController,
                            title: 'Aplicativo - Jejum Intermitente',
                            text: jejum,
                            hasAndroid: true,
                            hasApple: true,
                            image: 'jejum.png',
                            url:
                                'https://play.google.com/store/apps/details?id=com.dieta.jejum_intermitente',
                            urlIOS:
                                'https://apps.apple.com/br/app/jejum-intermitente-f%C3%A1cil/id1533103508',
                          ),
                          ComponentCarouselMobile(
                            index: 0,
                            pageCrtl: pageController,
                            title: 'Aplicativo - Isa Estética',
                            text: isa,
                            hasAndroid: true,
                            hasApple: false,
                            image: 'isa.png',
                            url:
                                'https://play.google.com/store/apps/details?id=com.beleza.isa_estetica',
                            urlIOS: '',
                          ),
                        ],
                        controller: pageController,
                      ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
