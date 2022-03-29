import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/widgets/widgets.dart';
import '../view.dart';

class ProjectsPage extends GetView<HomeController> {
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
                height: constraints.maxWidth > MOBILE_MAX ? 50 : 50,
              ),
              Container(
                width: constraints.maxWidth > MOBILE_MAX
                    ? size.width * 0.9
                    : size.width,
                height: constraints.maxWidth > MOBILE_MAX
                    ? size.height * 0.8
                    : size.height * 0.8,
                child: constraints.maxWidth > MOBILE_MAX
                    ? PageView(
                        children: [
                          CarouselWeb(
                            index: 1,
                            pageCrtl: pageController,
                            title: 'Aplicativo - Receitas Fit',
                            text: receitas,
                            hasAndroid: true,
                            hasApple: true,
                            hasWeb: false,
                            image: 'assets/receitas.png',
                            url:
                                'https://play.google.com/store/apps/details?id=br.com.rctorres.receitas_fit',
                            urlIOS:
                                'https://apps.apple.com/br/app/receitas-fit/id1540754956',
                          ),
                          CarouselWeb(
                            index: 2,
                            pageCrtl: pageController,
                            title: 'Aplicativo - Jejum Intermitente',
                            text: jejum,
                            hasAndroid: true,
                            hasApple: true,
                            hasWeb: false,
                            image: 'assets/jejum.png',
                            url:
                                'https://play.google.com/store/apps/details?id=com.dieta.jejum_intermitente',
                            urlIOS:
                                'https://apps.apple.com/br/app/jejum-intermitente-f%C3%A1cil/id1533103508',
                          ),
                          CarouselWeb(
                            index: 3,
                            pageCrtl: pageController,
                            title: 'Aplicativo/Site - Isa Estética',
                            text: isa,
                            hasAndroid: true,
                            hasWeb: true,
                            hasApple: false,
                            image: 'assets/isa.png',
                            url:
                                'https://play.google.com/store/apps/details?id=com.beleza.isa_estetica',
                            urlIOS: '',
                            urlWeb: 'https://isa-estetica.web.app/',
                          ),
                          CarouselWeb(
                            index: 0,
                            pageCrtl: pageController,
                            title: 'Aplicativo - Thomas',
                            text: thomas,
                            hasAndroid: true,
                            hasWeb: false,
                            hasApple: true,
                            image: 'assets/thomas.png',
                            url:
                                'https://play.google.com/store/apps/details?id=com.thomas',
                            urlIOS:
                                'https://apps.apple.com/br/app/thomas/id1549672161',
                          ),
                        ],
                        controller: pageController,
                      )
                    : PageView(
                        children: [
                          CarouselMobile(
                            index: 1,
                            pageCrtl: pageController,
                            title: 'Aplicativo - Receitas Fit',
                            text: receitas,
                            hasAndroid: true,
                            hasApple: true,
                            hasWeb: false,
                            image: 'assets/receitas.png',
                            url:
                                'https://play.google.com/store/apps/details?id=br.com.rctorres.receitas_fit',
                            urlIOS:
                                'https://apps.apple.com/br/app/receitas-fit/id1540754956',
                          ),
                          CarouselMobile(
                            index: 2,
                            pageCrtl: pageController,
                            title: 'Aplicativo - Jejum Intermitente',
                            text: jejum,
                            hasAndroid: true,
                            hasApple: true,
                            hasWeb: false,
                            image: 'assets/jejum.png',
                            url:
                                'https://play.google.com/store/apps/details?id=com.dieta.jejum_intermitente',
                            urlIOS:
                                'https://apps.apple.com/br/app/jejum-intermitente-f%C3%A1cil/id1533103508',
                          ),
                          CarouselMobile(
                            index: 3,
                            pageCrtl: pageController,
                            title: 'Aplicativo/Site - Isa Estética',
                            text: isa,
                            hasAndroid: true,
                            hasApple: false,
                            hasWeb: true,
                            image: 'assets/isa.png',
                            url:
                                'https://play.google.com/store/apps/details?id=com.beleza.isa_estetica',
                            urlIOS: '',
                            urlWeb: 'https://isa-estetica.web.app/',
                          ),
                          CarouselMobile(
                            index: 0,
                            pageCrtl: pageController,
                            title: 'Aplicativo - Thomas',
                            text: thomas,
                            hasAndroid: true,
                            hasApple: true,
                            hasWeb: false,
                            image: 'assets/thomas.png',
                            url:
                                'https://play.google.com/store/apps/details?id=com.thomas',
                            urlIOS:
                                'https://apps.apple.com/br/app/thomas/id1549672161',
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
