import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/modules/home/home_store.dart';
import 'package:portfolio/app/shared/constants/colors.dart';

class MobileMenuPage extends StatefulWidget {
  final double height;
  final ScrollController scrollController;
  MobileMenuPage({required this.height, required this.scrollController});
  @override
  MobileMenuPageState createState() => MobileMenuPageState();
}

class MobileMenuPageState extends ModularState<MobileMenuPage, HomeStore> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(5), bottomLeft: Radius.circular(5)),
          color: gray,
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 5, blurRadius: 5)
          ]),
      height: value == false ? 80 : 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'PORTFÓLIO',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: graphite),
                  )),
              Container(
                padding: EdgeInsets.only(right: 20),
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        value = !value;
                      });
                    },
                    icon: Icon(
                      Icons.menu,
                      color: graphite,
                    )),
              )
            ],
          ),
          ColumnMenu(
            controller: controller,
            height: widget.height,
            value: value,
            scrollController: widget.scrollController,
          ),
        ],
      ),
    );
  }
}

class ColumnMenu extends StatelessWidget {
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
