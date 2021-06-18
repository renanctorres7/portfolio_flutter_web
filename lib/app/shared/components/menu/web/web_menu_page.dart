import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/modules/home/home_store.dart';
import 'package:portfolio/app/shared/constants/colors.dart';

class WebMenuPage extends StatefulWidget {
  final double heigth;
  final ScrollController scrollController;
  WebMenuPage({required this.heigth, required this.scrollController});
  @override
  WebMenuPageState createState() => WebMenuPageState();
}

class WebMenuPageState extends ModularState<WebMenuPage, HomeStore> {
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
                    fontSize: 20, fontWeight: FontWeight.w700, color: graphite),
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
                              fontSize: 16,
                              fontFamily: "quicksand",
                              fontWeight: FontWeight.w500,
                              color: gray3)),
                    ),
                    onPressed: () {
                      controller.goToElement(
                          0, widget.heigth, widget.scrollController);
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
                              fontSize: 16,
                              fontFamily: "quicksand",
                              fontWeight: FontWeight.w500,
                              color: gray3)),
                    ),
                    onPressed: () {
                      controller.goToElement(
                          1, widget.heigth, widget.scrollController);
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
                              fontSize: 16,
                              fontFamily: "quicksand",
                              fontWeight: FontWeight.w500,
                              color: gray3)),
                    ),
                    onPressed: () {
                      controller.goToElement(
                          2, widget.heigth, widget.scrollController);
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
                              fontSize: 16,
                              fontFamily: "quicksand",
                              fontWeight: FontWeight.w500,
                              color: gray3)),
                    ),
                    onPressed: () {
                      controller.goToElement(
                          3, widget.heigth, widget.scrollController);
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
    );
  }
}
