import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/modules/home/home_store.dart';
import 'package:portfolio/app/shared/constants/colors.dart';

class WebMenuPage extends StatefulWidget {
  final double heigth;
  WebMenuPage({required this.heigth});
  @override
  WebMenuPageState createState() => WebMenuPageState();
}

class WebMenuPageState extends ModularState<WebMenuPage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 100,
      child: Card(
        color: gray,
        elevation: 10,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                padding: EdgeInsets.only(left: 60),
                child: Text(
                  'PORTFÓLIO',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: graphite),
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
                            return gray3;
                          }
                        }),
                        textStyle: MaterialStateProperty.resolveWith((states) =>
                            TextStyle(
                                fontSize: 18,
                                fontFamily: "quicksand",
                                fontWeight: FontWeight.w700,
                                color: gray3)),
                      ),
                      onPressed: () {
                        controller.goToElement(0, widget.heigth);
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
                            return gray3;
                          }
                        }),
                        textStyle: MaterialStateProperty.resolveWith((states) =>
                            TextStyle(
                                fontSize: 18,
                                fontFamily: "quicksand",
                                fontWeight: FontWeight.w700,
                                color: gray3)),
                      ),
                      onPressed: () {
                        controller.goToElement(1, widget.heigth);
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
                            return gray3;
                          }
                        }),
                        textStyle: MaterialStateProperty.resolveWith((states) =>
                            TextStyle(
                                fontSize: 18,
                                fontFamily: "quicksand",
                                fontWeight: FontWeight.w700,
                                color: gray3)),
                      ),
                      onPressed: () {
                        controller.goToElement(2, widget.heigth);
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
                            return gray3;
                          }
                        }),
                        textStyle: MaterialStateProperty.resolveWith((states) =>
                            TextStyle(
                                fontSize: 18,
                                fontFamily: "quicksand",
                                fontWeight: FontWeight.w700,
                                color: gray3)),
                      ),
                      onPressed: () {
                        controller.goToElement(3, widget.heigth);
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
    );
  }
}
