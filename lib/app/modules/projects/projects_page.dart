import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/modules/projects/projects_controller.dart';
import 'package:portfolio/app/shared/constants/text.dart';
import 'package:portfolio/app/shared/constants/values.dart';

import '../../shared/widgets/widgets.dart';

class ProjectsPage extends GetView<ProjectsController> {
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
                height:
                    constraints.maxWidth > DefaultValues.MOBILE_MAX ? 50 : 50,
              ),
              Container(
                width: constraints.maxWidth > DefaultValues.MOBILE_MAX
                    ? size.width * 0.9
                    : size.width,
                height: constraints.maxWidth > DefaultValues.MOBILE_MAX
                    ? size.height * 0.8
                    : size.height * 0.8,
                child: constraints.maxWidth > DefaultValues.MOBILE_MAX
                    ? PageView(
                        children: [
                          CarouselWeb(
                            index: 1,
                            pageCrtl: controller.pageController.value,
                            title: 'Aplicativo - Receitas Fit',
                            text: DefaultTexts.receitas,
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
                            pageCrtl: controller.pageController.value,
                            title: 'Aplicativo - Jejum Intermitente',
                            text: DefaultTexts.jejum,
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
                            pageCrtl: controller.pageController.value,
                            title: 'Aplicativo/Site - Isa Estética',
                            text: DefaultTexts.isa,
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
                            pageCrtl: controller.pageController.value,
                            title: 'Aplicativo - Thomas',
                            text: DefaultTexts.thomas,
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
                        controller: controller.pageController.value,
                      )
                    : PageView(
                        children: [
                          CarouselMobile(
                            index: 1,
                            pageCrtl: controller.pageController.value,
                            title: 'Aplicativo - Receitas Fit',
                            text: DefaultTexts.receitas,
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
                            pageCrtl: controller.pageController.value,
                            title: 'Aplicativo - Jejum Intermitente',
                            text: DefaultTexts.jejum,
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
                            pageCrtl: controller.pageController.value,
                            title: 'Aplicativo/Site - Isa Estética',
                            text: DefaultTexts.isa,
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
                            pageCrtl: controller.pageController.value,
                            title: 'Aplicativo - Thomas',
                            text: DefaultTexts.thomas,
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
                        controller: controller.pageController.value,
                      ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
