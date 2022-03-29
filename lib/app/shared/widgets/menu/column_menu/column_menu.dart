import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColumnMenu extends GetView<HomeController> {
  const ColumnMenu(
      {Key? key,
      required this.controller,
      required this.height,
      required this.value,
      required this.scrollController})
      : super(key: key);

  final HomeStore controller;
  final double height;
  final bool value;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    if (value == true) {
      return Container(
        color: gray,
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.white;
                    } else {
                      return gray3;
                    }
                  }),
                  textStyle: MaterialStateProperty.resolveWith((states) =>
                      TextStyle(
                          fontSize: 16,
                          fontFamily: "quicksand",
                          fontWeight: FontWeight.w500,
                          color: gray3)),
                ),
                onPressed: () {
                  controller.goToElement(0, height, scrollController);
                },
                child: Text(
                  'Sobre   ',
                ),
              ),
            ),
            Container(
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.white;
                    } else {
                      return gray3;
                    }
                  }),
                  textStyle: MaterialStateProperty.resolveWith((states) =>
                      TextStyle(
                          fontSize: 16,
                          fontFamily: "quicksand",
                          fontWeight: FontWeight.w500,
                          color: gray3)),
                ),
                onPressed: () {
                  controller.goToElement(1, height, scrollController);
                },
                child: Text(
                  'Projetos',
                ),
              ),
            ),
            Container(
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.white;
                    } else {
                      return gray3;
                    }
                  }),
                  textStyle: MaterialStateProperty.resolveWith((states) =>
                      TextStyle(
                          fontSize: 16,
                          fontFamily: "quicksand",
                          fontWeight: FontWeight.w500,
                          color: gray3)),
                ),
                onPressed: () {
                  controller.goToElement(2, height, scrollController);
                },
                child: Text(
                  'Habilidades',
                ),
              ),
            ),
            Container(
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.white;
                    } else {
                      return gray3;
                    }
                  }),
                  textStyle: MaterialStateProperty.resolveWith((states) =>
                      TextStyle(
                          fontSize: 16,
                          fontFamily: "quicksand",
                          fontWeight: FontWeight.w500,
                          color: gray3)),
                ),
                onPressed: () {
                  controller.goToElement(3, height, scrollController);
                },
                child: Text(
                  'Contato',
                ),
              ),
            ),
          ],
        ),
      );
    } else
      return Container();
  }
}
