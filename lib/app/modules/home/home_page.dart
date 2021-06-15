import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/modules/home/home_store.dart';
import 'package:portfolio/app/shared/components/menu/mobile/mobile_menu_page.dart';
import 'package:portfolio/app/shared/components/menu/web/web_menu_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  // double controller.controller.offset = 0;

  // ScrollController? _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    // bool voidOnScroll(ScrollNotification scrollNotification) {
    //   controller.offset = scrollNotification.metrics.pixels;
    //   return true;
    // }

    // void goToElement(int index) {
    //   _controller!.animateTo(
    //       (size.height *
    //           index), // 100 is the height of container and index of 6th element is 5
    //       duration: const Duration(milliseconds: 1000),
    //       curve: Curves.decelerate);
    // }

    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: controller.voidOnScroll,
        child: Stack(
          children: [
            Positioned(
              top: -.25 * controller.offset,
              child: Container(
                color: Colors.green,
                height: size.height,
                width: size.width,
              ),
            ),
            SingleChildScrollView(
              controller: controller.scrollController,
              child: Column(
                children: [
                  SizedBox(
                    height: size.height,
                  ),
                  Container(
                    color: Colors.blue,
                    height: size.height,
                    width: size.width,
                  ),
                  Container(
                    color: Colors.yellow,
                    height: size.height,
                    width: size.width,
                  ),
                  Container(
                    color: Colors.grey,
                    height: size.height,
                    width: size.width,
                  )
                ],
              ),
            ),
            ResponsiveVisibility(
              visible: false,
              visibleWhen: [Condition.largerThan(name: MOBILE)],
              child: WebMenuPage(
                heigth: size.height,
              ),
              replacement: MobileMenuPage(),
            ),
            TextButton(
                onPressed: () => controller.goToElement(5, size.height),
                child: Text("teste")),
          ],
        ),
      ),
    );
  }
}
