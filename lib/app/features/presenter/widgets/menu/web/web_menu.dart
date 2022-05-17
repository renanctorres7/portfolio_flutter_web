import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/colors.dart';
import '../../../controller/home_controller.dart';

class WebMenu extends GetView<HomeController> {
  final double heigth;
  final ScrollController scrollController;
  WebMenu({required this.heigth, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    

    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1920),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5)),
              color: ColorsApp.gray,
              boxShadow: [
                BoxShadow(color: Colors.black38, spreadRadius: 5, blurRadius: 5)
              ]),
          height: 80,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 60),
                  child: Text(
                    'PORTFÓLIO',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: ColorsApp.graphite),
                  )),
              Container(
                padding: EdgeInsets.only(right: 60),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.hovered)) {
                              return Colors.white;
                            } else {
                              return ColorsApp.gray3;
                            }
                          }),
                          textStyle: MaterialStateProperty.resolveWith(
                              (states) => TextStyle(
                                  fontSize: 16,
                                  fontFamily: "quicksand",
                                  fontWeight: FontWeight.w500,
                                  color: ColorsApp.gray3)),
                        ),
                        onPressed: () {
                          controller.goToElement(0, heigth, scrollController);
                        },
                        child: Text('Sobre'),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.hovered)) {
                              return Colors.white;
                            } else {
                              return ColorsApp.gray3;
                            }
                          }),
                          textStyle: MaterialStateProperty.resolveWith(
                              (states) => TextStyle(
                                  fontSize: 16,
                                  fontFamily: "quicksand",
                                  fontWeight: FontWeight.w500,
                                  color: ColorsApp.gray3)),
                        ),
                        onPressed: () {
                          controller.goToElement(1, heigth, scrollController);
                        },
                        child: Text(
                          'Projetos',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.hovered)) {
                              return Colors.white;
                            } else {
                              return ColorsApp.gray3;
                            }
                          }),
                          textStyle: MaterialStateProperty.resolveWith(
                              (states) => TextStyle(
                                  fontSize: 16,
                                  fontFamily: "quicksand",
                                  fontWeight: FontWeight.w500,
                                  color: ColorsApp.gray3)),
                        ),
                        onPressed: () {
                          controller.goToElement(2, heigth, scrollController);
                        },
                        child: Text(
                          'Habilidades',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.hovered)) {
                              return Colors.white;
                            } else {
                              return ColorsApp.gray3;
                            }
                          }),
                          textStyle: MaterialStateProperty.resolveWith(
                              (states) => TextStyle(
                                  fontSize: 16,
                                  fontFamily: "quicksand",
                                  fontWeight: FontWeight.w500,
                                  color: ColorsApp.gray3)),
                        ),
                        onPressed: () {
                          controller.goToElement(3, heigth, scrollController);
                        },
                        child: Text(
                          'Contato',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
