import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/core/constants/colors.dart';
import 'package:portfolio/app/features/presenter/controller/projects_controller.dart';

import '../../../core/constants/status.dart';
import '../../../core/constants/values.dart';
import '../../../core/utils/utils.dart';
import '../widgets/carousel_widget/mobile/carousel_mobile.dart';
import '../widgets/carousel_widget/web/carousel_web.dart';

class ProjectsPage extends GetView<ProjectsController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            color: ColorsApp.white,
            height: constraints.maxWidth > DefaultValues.MOBILE_MAX
                ? Utils.sizeQuery(context).height * 0.7
                : Utils.sizeQuery(context).height * 0.9,
            width: Utils.sizeQuery(context).width,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 800, minWidth: 350),
            child: Container(
              color: ColorsApp.white,
              height: constraints.maxWidth > DefaultValues.MOBILE_MAX
                  ? Utils.sizeQuery(context).height * 0.7
                  : Utils.sizeQuery(context).height * 0.9,
              width: Utils.sizeQuery(context).width,
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                    ),
                    Container(
                        width: Utils.sizeQuery(context).width,
                        height: Utils.sizeQuery(context).height * 0.8,
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
                              if (constraints.maxWidth >
                                  DefaultValues.MOBILE_MAX) {
                                return PageView.builder(
                                  itemCount: controller.projectsList.length,
                                  controller: controller.pageController,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return CarouselWeb(
                                      key: Key(index.toString()),
                                      index: index,
                                      lastIndex:
                                          controller.projectsList.length - 1,
                                      pageCrtl: controller.pageController,
                                      title: controller
                                              .projectsList[index].title ??
                                          "",
                                      text:
                                          controller.projectsList[index].text ??
                                              "",
                                      image: controller
                                              .projectsList[index].imageUrl ??
                                          "",
                                      urlAndroid: controller
                                              .projectsList[index].androidUrl ??
                                          "",
                                      urlIOS: controller
                                              .projectsList[index].iosUrl ??
                                          "",
                                      urlWeb: controller
                                              .projectsList[index].webUrl ??
                                          "",
                                    );
                                  },
                                );
                              } else {
                                return PageView.builder(
                                  itemCount: controller.projectsList.length,
                                  controller: controller.pageController,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return CarouselMobile(
                                      key: Key(index.toString()),
                                      index: index,
                                      lastIndex:
                                          controller.projectsList.length - 1,
                                      pageCrtl: controller.pageController,
                                      title: controller
                                              .projectsList[index].title ??
                                          "",
                                      text:
                                          controller.projectsList[index].text ??
                                              "",
                                      image: controller
                                              .projectsList[index].imageUrl ??
                                          "",
                                      urlAndroid: controller
                                              .projectsList[index].androidUrl ??
                                          "",
                                      urlIOS: controller
                                              .projectsList[index].iosUrl ??
                                          "",
                                      urlWeb: controller
                                              .projectsList[index].webUrl ??
                                          "",
                                    );
                                  },
                                );
                              }
                          }
                        })),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
