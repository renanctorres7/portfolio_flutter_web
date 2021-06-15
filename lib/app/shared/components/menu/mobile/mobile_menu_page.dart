import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/modules/home/home_store.dart';
import 'package:portfolio/app/shared/constants/colors.dart';

class MobileMenuPage extends StatefulWidget {
  final double height;
  MobileMenuPage({required this.height});
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
      height: value == false ? 80 : 200,
      child: Card(
        color: gray,
        elevation: 10,
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
            ),
          ],
        ),
      ),
    );
  }
}

class ColumnMenu extends StatelessWidget {
  const ColumnMenu(
      {Key? key,
      required this.controller,
      required this.height,
      required this.value})
      : super(key: key);

  final HomeStore controller;
  final double height;
  final bool value;

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
                  controller.goToElement(0, height);
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
                  controller.goToElement(1, height);
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
                  controller.goToElement(2, height);
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
                  controller.goToElement(3, height);
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
