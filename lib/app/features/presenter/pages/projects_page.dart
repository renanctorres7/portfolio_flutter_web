import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/features/presenter/controller/home_controller.dart';

import '../../../core/constants/text.dart';
import '../../../core/constants/values.dart';
import '../widgets/carousel_widget/mobile/carousel_mobile.dart';
import '../widgets/carousel_widget/web/carousel_web.dart';

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
                height: 50,
              ),
              Container(
                width: constraints.maxWidth > DefaultValues.MOBILE_MAX
                    ? size.width * 0.9
                    : size.width,
                height: size.height * 0.8,
                child: constraints.maxWidth > DefaultValues.MOBILE_MAX
                    ? PageView.builder(
                        itemCount: controller.projectsList.length,
                        controller: controller.pageController,
                        itemBuilder: (BuildContext context, int index) {
                          return CarouselWeb(
                            index: index,
                            pageCrtl: controller.pageController,
                            title: controller.projectsList[index].title ?? "",
                            text: controller.projectsList[index].text ?? "",
                            image:
                                controller.projectsList[index].imageUrl ?? "",
                            urlAndroid:
                                controller.projectsList[index].androidUrl ?? "",
                            urlIOS: controller.projectsList[index].iosUrl ?? "",
                            urlWeb: controller.projectsList[index].webUrl ?? "",
                          );
                        },
                      )
                    : PageView(
                        children: [
                          CarouselMobile(
                            index: 1,
                            pageCrtl: controller.pageController,
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
                            pageCrtl: controller.pageController,
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
                            pageCrtl: controller.pageController,
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
                            pageCrtl: controller.pageController,
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
                        controller: controller.pageController,
                      ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
