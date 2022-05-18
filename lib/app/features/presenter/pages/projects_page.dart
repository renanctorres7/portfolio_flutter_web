import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/core/constants/colors.dart';
import 'package:portfolio/app/features/presenter/controller/projects_controller.dart';

import '../../../core/constants/status.dart';
import '../../../core/constants/values.dart';
import '../widgets/carousel_widget/mobile/carousel_mobile.dart';
import '../widgets/carousel_widget/web/carousel_web.dart';

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
                height: 50,
              ),
              Container(
                  width: constraints.maxWidth > DefaultValues.MOBILE_MAX
                      ? size.width * 0.9
                      : size.width,
                  height: size.height * 0.8,
                  child: Obx(() {
                    switch (controller.loadingStatus.value) {
                      case StatusLoading.loading:
                        return Center(
                          child: CircularProgressIndicator(
                            color: ColorsApp.purple,
                          ),
                        );
                      case StatusLoading.complete:
                      default:
                        if (constraints.maxWidth > DefaultValues.MOBILE_MAX) {
                          return PageView.builder(
                            itemCount: controller.projectsList.length,
                            controller: controller.pageController,
                            itemBuilder: (BuildContext context, int index) {
                              return CarouselWeb(
                                key: Key(index.toString()),
                                index: index,
                                lastIndex: controller.projectsList.length - 1,
                                pageCrtl: controller.pageController,
                                title:
                                    controller.projectsList[index].title ?? "",
                                text: controller.projectsList[index].text ?? "",
                                image:
                                    controller.projectsList[index].imageUrl ??
                                        "",
                                urlAndroid:
                                    controller.projectsList[index].androidUrl ??
                                        "",
                                urlIOS:
                                    controller.projectsList[index].iosUrl ?? "",
                                urlWeb:
                                    controller.projectsList[index].webUrl ?? "",
                              );
                            },
                          );
                        } else {
                          return PageView.builder(
                            itemCount: controller.projectsList.length,
                            controller: controller.pageController,
                            itemBuilder: (BuildContext context, int index) {
                              return CarouselMobile(
                                key: Key(index.toString()),
                                index: index,
                                lastIndex: controller.projectsList.length - 1,
                                pageCrtl: controller.pageController,
                                title:
                                    controller.projectsList[index].title ?? "",
                                text: controller.projectsList[index].text ?? "",
                                image:
                                    controller.projectsList[index].imageUrl ??
                                        "",
                                urlAndroid:
                                    controller.projectsList[index].androidUrl ??
                                        "",
                                urlIOS:
                                    controller.projectsList[index].iosUrl ?? "",
                                urlWeb:
                                    controller.projectsList[index].webUrl ?? "",
                              );
                            },
                          );
                        }
                    }
                  })),
            ],
          ),
        ),
      );
    });
  }
}
